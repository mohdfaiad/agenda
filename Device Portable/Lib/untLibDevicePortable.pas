unit untLibDevicePortable;

interface

Uses  FMX.Forms, Data.DB, untLibGeral,smNetworkState, untResourceString,
  untTypes;

  Type
    TConfiguracoes = class
      public
        DesconectarAoSair:Boolean;
        procedure GetConfiguracoes;
  end;

  procedure SetStyle(Formulario:TForm);
  function GetEscolaId:Integer;
  function IsModoTeste:Boolean;
  function IsTesteApp:Boolean;

  function UsuarioLogadoIsResponsavel:boolean;
  function UsuarioLogadoIsFuncionario:boolean;
  function GetApplicationName:string;
  procedure SetFlagEnviado(DataSet:TDataset;Campo:String ='enviado_server');
  procedure MsgPoupUpTeste(Mensagem:String);

  function ValidacoesRestClientBeforeExecute(ExceptionCreate:Boolean = False):Boolean;


implementation

uses untDM, untDMStyles, System.SysUtils, smGeralFMX, smMensagensFMX;


procedure SetStyle(Formulario:TForm);
begin
   if IsSysOSAndroid then
     Formulario.StyleBook := DMStyles.styleAndroid;

   if IsSysOSiOS then
     Formulario.StyleBook := DMStyles.styleIOS;

   if IsSysOSWindows then
     Formulario.StyleBook := DMStyles.styleWindows;

end;

function GetEscolaId:Integer;
begin
  Result:= DM.fEscolaId;
end;

function UsuarioLogadoIsResponsavel:boolean;
begin
  Result:= (Usuario.Tipo = Responsavel);
end;

function UsuarioLogadoIsFuncionario:boolean;
begin
  Result:= (Usuario.Tipo = Funcionario);
end;

function GetApplicationName:string;
begin
  Result:= 'L�pis Verde';
end;

procedure SetFlagEnviado(DataSet:TDataset;Campo:String ='enviado_server');
begin
  if DataSet.State in [dsInactive] then
    DataSet.Active := True;

  DataSet.First;
  while not(DataSet.Eof) do
  begin
    DataSet.Edit;
    DataSet.FieldByName(Campo).AsString:= 'S';
    DataSet.Post;
    DataSet.Next;
  end;
end;

function IsModoTeste:Boolean;
begin
  Result:=Dm.IsModoTeste;
end;

function IsTesteApp:Boolean;
begin
  Result:=Dm.IsTesteApp;
end;


procedure MsgPoupUpTeste(Mensagem:String);
begin
  if not IsModoTeste then
    Exit;

  if IsSysOSWindows then
    Exit;

  smMensagensFMX.MsgPoupUp(Mensagem);
end;

function ValidacoesRestClientBeforeExecute(ExceptionCreate:Boolean = False):Boolean;
begin
  Result:= True;

  if not smNetworkState.IsConnected then
  begin
    Result:= False;

    if ExceptionCreate then
      raise Exception.Create(rs_erro_conexao_internet);
  end;
end;
{ TConfiguracoes }

procedure TConfiguracoes.GetConfiguracoes;
begin
  DesconectarAoSair:=False;
end;

end.
