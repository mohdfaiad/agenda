﻿unit untDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.FMXUI.Wait, FireDAC.Comp.UI, Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,System.IOUtils,
  FMX.Types, FMX.Controls, System.ImageList, FMX.ImgList, FGX.ProgressDialog,
  IPPeerClient, REST.Client, Data.Bind.Components, Data.Bind.ObjectScope,REST.Types;

type
  TDM = class(TDataModule)
    FDConnectionDB: TFDConnection;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    ImageList1: TImageList;
    fgActivityDialog: TfgActivityDialog;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    FDConnectionDBEscola: TFDConnection;
    FDConnectionDBResponsavel: TFDConnection;
    fdqLogError: TFDQuery;
    fdqLogErrorSaveServer: TFDQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    procedure ConectarSQLite(FDConnection: TFDConnection;DataBaseName:String);
    procedure ConectarBases;
    procedure ConectarDB;
    procedure ConectarDBEscola;
    procedure ConectarDBResponsavel;

  public
    fUsuarioLogadoIsResponsavel:boolean;
    fUsuarioLogadoIsFuncionario:boolean;

    fEscolaId:Integer;
    fResponsavelId:Integer;
    fFuncionarioId:Integer;
    procedure ResetRESTConnection;
    procedure SetLogError( MsgError,Aplicacao,UnitNome,Classe,Metodo:String;
                           Data:TDateTime;
                           MsgUsuario = '';
                           EscolaId:Integer = 0;
                           ResponsavelId:Integer=0;
                           FuncionarioId:Integer=0
                          );
    procedure SalvarLogError;

  end;

var
  DM: TDM;

const
  BASE_URL: String = 'http://54.200.116.223:8080/datasnap/rest/TSrvServerMetodos';

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

uses smGeralFMX, FMX.Dialogs, Data.FireDACJSONReflect, untModuloCliente,
  untFuncoes;

{$R *.dfm}

procedure TDM.ConectarBases;
begin
  ConectarDB;
  ConectarDBEscola;
  ConectarDBResponsavel;
end;

procedure TDM.ConectarDB;
begin
  ConectarSQLite(FDConnectionDB,'db.s3db');
end;

procedure TDM.ConectarDBEscola;
begin
  ConectarSQLite(FDConnectionDBEscola,'dbEscola.s3db');
end;

procedure TDM.ConectarDBResponsavel;
begin
  ConectarSQLite(FDConnectionDBResponsavel,'dbResponsavel.s3db');
end;

procedure TDM.ConectarSQLite(FDConnection: TFDConnection;DataBaseName:String);
var
  DataBase:string;
begin

  try
    FDConnection.Close;

    if smGeralFMX.IsSysOSAndroid or (smGeralFMX.IsSysOSiOS) then
    begin
      DataBase := TPath.GetDocumentsPath + PathDelim + DataBaseName;
      FDConnection.Params.Values['Database']:= DataBase;
      //FDConnection.ExecSQL('CREATE TABLE aluno (   aluno_id INTEGER (11)  PRIMARY KEY,    nome     VARCHAR (150) );');
    end;

    FDConnection.Open;
  except
   on E: Exception do
        ShowMessage('Erro ao conectar ao banco de dados local!' + #13 +
          E.Message);
  end;

end;

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  FDConnectionDB.Close;
  FDConnectionDBEscola.Close;
  FDConnectionDBResponsavel.Close;
  ConectarBases;

  //Teste Temporario
  fFuncionarioId:=16;
  fEscolaId:=1;
  fResponsavelId:=0;

  fUsuarioLogadoIsFuncionario:=True;
  fUsuarioLogadoIsResponsavel:=False;

end;

procedure TDM.ResetRESTConnection;
begin
  RESTClient1.ResetToDefaults;
  RESTRequest1.ResetToDefaults;
  RESTResponse1.ResetToDefaults;
  RESTClient1.BaseURL := BASE_URL;
end;

procedure TDM.SalvarLogError;
var
  LDataSetList  : TFDJSONDataSets;
  MsgSalvar:string;
begin
  fdqLogErrorSaveServer.Active := False;

  LDataSetList := TFDJSONDataSets.Create;
  TFDJSONDataSetsWriter.ListAdd(LDataSetList,'log_error',fdqLogErrorSaveServer);

  try
    MsgSalvar:= ModuloCliente.SmMainClient.SalvarLogError(GetEscolaId,GetFuncionarioId,LDataSetList);
  except on E:Exception do
    ShowMessage('Erro ao salvar LogError' + #13 + E.Message);
  end;

  if MsgSalvar <> EmptyStr then
    ShowMessage('Erro ao Salvar LogError' + #13 +MsgSalvar);



end;

procedure TDM.SetLogError(MsgError, Aplicacao, UnitNome, Classe, Metodo: String;
  Data: TDateTime; EscolaId, ResponsavelId, FuncionarioId: Integer);
begin
try
    fdqLogError.Active:=False;
    fdqLogError.Active:=True;

    fdqLogError.Append;
    fdqLogError.FieldByName('log_error_id').AsString:= GetGUID;
    fdqLogError.FieldByName('msg_error').AsString:= MsgError;
    fdqLogError.FieldByName('aplicacao').AsString:= Aplicacao;
    fdqLogError.FieldByName('unit').AsString:= UnitNome;
    fdqLogError.FieldByName('class').AsString:= Classe;
    fdqLogError.FieldByName('metodo').AsString:= Metodo;

    if EscolaId > 0 then
      fdqLogError.FieldByName('escola_id').AsInteger:=EscolaId;

    if ResponsavelId > 0 then
      fdqLogError.FieldByName('responsavel_id').AsInteger:=ResponsavelId;

    if FuncionarioId > 0 then
      fdqLogError.FieldByName('funcionario_id').AsInteger:= FuncionarioId;

    fdqLogError.FieldByName('data').AsDateTime:= Data;
    fdqLogError.Post;

    if Msg then

  finally
    fdqLogError.Active:=False;
  end;
end;

end.
