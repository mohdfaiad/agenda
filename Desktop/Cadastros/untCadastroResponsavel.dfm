inherited frmCadastroResponsavel: TfrmCadastroResponsavel
  Caption = 'Cadastro de Respons'#225'veis'
  ClientHeight = 715
  ClientWidth = 1362
  OnClose = FormClose
  ExplicitWidth = 1378
  ExplicitHeight = 753
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToBaCadastro: TToolBar
    Width = 1362
    ExplicitWidth = 1362
  end
  inherited PaCoPadrao: TPageControl
    Width = 1362
    Height = 674
    ActivePage = TaShCadastro
    ExplicitWidth = 1230
    ExplicitHeight = 483
    inherited TaShConsulta: TTabSheet
      ExplicitWidth = 1222
      ExplicitHeight = 455
      inherited grbxPesquisa: TGroupBox
        Width = 1354
        ExplicitWidth = 1222
        inherited ToolBar1: TToolBar
          Width = 1344
          ExplicitWidth = 1344
        end
      end
      inherited grPesquisa: TsmDBGrid
        Width = 1354
        Height = 531
        DataSource = dsBusca
        Columns = <
          item
            Expanded = False
            FieldName = 'responsavel_id'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'nome'
            Title.Caption = 'Nome'
            Width = 230
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sobrenome'
            Title.Caption = 'Sobrenome'
            Width = 245
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sexo'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'rg'
            Title.Caption = 'RG'
            Width = 190
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cpf'
            Title.Caption = 'CPF'
            Width = 190
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ativo'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'email'
            Title.Caption = 'Email'
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'informacoes_gerais'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'escola_id'
            Visible = False
          end>
      end
      inherited stbrConsulta: TStatusBar
        Top = 628
        Width = 1354
        ExplicitTop = 628
        ExplicitWidth = 1354
      end
    end
    inherited TaShCadastro: TTabSheet
      ExplicitWidth = 1222
      ExplicitHeight = 455
      object cxPageControl1: TcxPageControl
        Left = 0
        Top = 0
        Width = 1354
        Height = 646
        Align = alClient
        TabOrder = 0
        Properties.ActivePage = cxTabSheet1
        Properties.CustomButtons.Buttons = <>
        ExplicitWidth = 1222
        ExplicitHeight = 455
        ClientRectBottom = 642
        ClientRectLeft = 4
        ClientRectRight = 1350
        ClientRectTop = 24
        object cxTabSheet1: TcxTabSheet
          Caption = 'Dados Principais'
          ImageIndex = 0
          ExplicitWidth = 1214
          ExplicitHeight = 427
          object ScrollBox1: TScrollBox
            Left = 0
            Top = 0
            Width = 1346
            Height = 618
            Align = alClient
            TabOrder = 0
            ExplicitTop = -6
            object cxGroupBox2: TcxGroupBox
              Left = 24
              Top = 10
              Caption = 'Dados do Respons'#225'vel'
              TabOrder = 0
              Height = 311
              Width = 545
              object Label3: TLabel
                Left = 20
                Top = 59
                Width = 27
                Height = 13
                Caption = 'Nome'
                FocusControl = cxDBTextEdit1
              end
              object Label4: TLabel
                Left = 20
                Top = 112
                Width = 54
                Height = 13
                Caption = 'Sobrenome'
                FocusControl = cxDBTextEdit2
              end
              object Label7: TLabel
                Left = 20
                Top = 218
                Width = 14
                Height = 13
                Caption = 'RG'
              end
              object Label8: TLabel
                Left = 204
                Top = 218
                Width = 19
                Height = 13
                Caption = 'CPF'
              end
              object Label6: TLabel
                Left = 395
                Top = 218
                Width = 24
                Height = 13
                Caption = 'Sexo'
              end
              object Label2: TLabel
                Left = 20
                Top = 165
                Width = 24
                Height = 13
                Caption = 'Email'
                FocusControl = cxDBTextEdit1
              end
              object cxDBTextEdit1: TcxDBTextEdit
                Left = 20
                Top = 76
                DataBinding.DataField = 'nome'
                DataBinding.DataSource = dsResp
                Enabled = False
                TabOrder = 0
                Width = 496
              end
              object cxDBTextEdit2: TcxDBTextEdit
                Left = 20
                Top = 129
                DataBinding.DataField = 'sobrenome'
                DataBinding.DataSource = dsResp
                Enabled = False
                TabOrder = 1
                Width = 496
              end
              object cxDBMaskEdit1: TcxDBMaskEdit
                Left = 20
                Top = 235
                DataBinding.DataField = 'rg'
                DataBinding.DataSource = dsResp
                Enabled = False
                Properties.EditMask = '00.000.000-a;0'
                TabOrder = 3
                Width = 162
              end
              object cxDBMaskEdit2: TcxDBMaskEdit
                Left = 204
                Top = 235
                DataBinding.DataField = 'cpf'
                DataBinding.DataSource = dsResp
                Enabled = False
                Properties.EditMask = '999.999.999-99;0;_'
                TabOrder = 4
                Width = 167
              end
              object cxDBImageComboBox1: TcxDBImageComboBox
                Left = 395
                Top = 235
                DataBinding.DataField = 'sexo'
                DataBinding.DataSource = dsResp
                Enabled = False
                Properties.Items = <
                  item
                    Description = 'Masculino'
                    ImageIndex = 0
                    Value = 'M'
                  end
                  item
                    Description = 'Feminino'
                    Value = 'F'
                  end>
                Style.Shadow = False
                Style.ButtonStyle = btsDefault
                Style.ButtonTransparency = ebtNone
                TabOrder = 5
                Width = 121
              end
              object cxDBTextEdit3: TcxDBTextEdit
                Left = 20
                Top = 184
                DataBinding.DataField = 'email'
                DataBinding.DataSource = dsResp
                Enabled = False
                TabOrder = 2
                Width = 496
              end
              object cxLabel2: TcxLabel
                Left = 20
                Top = 274
                Caption = 'Estas informa'#231#245'es s'#243' podem ser alteradas pelo Respons'#225'vel.'
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clRed
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = [fsBold]
                Style.IsFontAssigned = True
                Transparent = True
              end
              object btnPesquisarResponsavel: TcxButton
                Left = 20
                Top = 28
                Width = 179
                Height = 25
                Caption = 'Pesquisar Respons'#225'vel'
                OptionsImage.ImageIndex = 30
                OptionsImage.Images = DM.ImageList1
                TabOrder = 7
                OnClick = btnPesquisarResponsavelClick
              end
            end
            object cxGroupBox1: TcxGroupBox
              Left = 24
              Top = 327
              Caption = 'Telefones'
              TabOrder = 1
              Height = 226
              Width = 363
              object Bevel1: TBevel
                Left = 208
                Top = 96
                Width = 50
                Height = 50
              end
              object Bevel2: TBevel
                Left = 2
                Top = 18
                Width = 359
                Height = 44
                Align = alTop
                ExplicitLeft = 195
                ExplicitTop = 46
              end
              object DBNavigator1: TDBNavigator
                Left = 16
                Top = 28
                Width = 105
                Height = 25
                DataSource = dsTelefone
                VisibleButtons = [nbInsert, nbDelete, nbPost]
                Align = alCustom
                ConfirmDelete = False
                TabOrder = 0
              end
              object cxGrid1: TcxGrid
                Left = 2
                Top = 62
                Width = 359
                Height = 162
                Align = alClient
                TabOrder = 1
                ExplicitTop = 49
                ExplicitHeight = 175
                object cxGrid1DBTableView1: TcxGridDBTableView
                  Navigator.Buttons.CustomButtons = <>
                  DataController.DataSource = dsTelefone
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  OptionsView.GroupByBox = False
                  object cxGrid1DBTableView1escola_telefone_id: TcxGridDBColumn
                    DataBinding.FieldName = 'escola_telefone_id'
                    Visible = False
                    Width = 108
                  end
                  object cxGrid1DBTableView1escola_id: TcxGridDBColumn
                    DataBinding.FieldName = 'escola_id'
                    Visible = False
                    Width = 74
                  end
                  object cxGrid1DBTableView1telefone_tipo_id: TcxGridDBColumn
                    DataBinding.FieldName = 'telefone_tipo_id'
                    Visible = False
                    Width = 107
                  end
                  object cxGrid1DBTableView1numero: TcxGridDBColumn
                    Caption = 'N'#250'mero'
                    DataBinding.FieldName = 'numero'
                    Width = 179
                  end
                  object cxGrid1DBTableView1TelefoneTipo: TcxGridDBColumn
                    Caption = 'Tipo'
                    DataBinding.FieldName = 'telefone_tipo_id'
                    PropertiesClassName = 'TcxLookupComboBoxProperties'
                    Properties.KeyFieldNames = 'telefone_tipo_id'
                    Properties.ListColumns = <
                      item
                        FieldName = 'descricao'
                      end>
                    Properties.ListOptions.ShowHeader = False
                    Properties.ListSource = dsTelefoneTipo
                    Width = 152
                  end
                end
                object cxGrid1Level1: TcxGridLevel
                  GridView = cxGrid1DBTableView1
                end
              end
            end
            object cxGroupBox3: TcxGroupBox
              Left = 590
              Top = 10
              Caption = 'Dados Gerais de Cadastro'
              TabOrder = 2
              Height = 226
              Width = 545
              object Label9: TLabel
                Left = 20
                Top = 71
                Width = 93
                Height = 13
                Caption = 'Informa'#231#245'es Gerais'
              end
              object Label5: TLabel
                Left = 158
                Top = 32
                Width = 99
                Height = 13
                Caption = 'Tipo de Respons'#225'vel'
              end
              object cxDBMemo1: TcxDBMemo
                Left = 20
                Top = 90
                DataBinding.DataField = 'informacoes_gerais'
                DataBinding.DataSource = dsCad
                TabOrder = 2
                Height = 119
                Width = 496
              end
              object cmbTipoResponsavel: TcxDBLookupComboBox
                Left = 158
                Top = 51
                DataBinding.DataField = 'responsavel_tipo_id'
                DataBinding.DataSource = dsCad
                Properties.DropDownListStyle = lsFixedList
                Properties.KeyFieldNames = 'responsavel_tipo_id'
                Properties.ListColumns = <
                  item
                    FieldName = 'descricao'
                  end>
                Properties.ListOptions.ShowHeader = False
                Properties.ListSource = dsResponsavelTipo
                TabOrder = 1
                Width = 185
              end
              object cxDBCheckBox1: TcxDBCheckBox
                Left = 20
                Top = 29
                Caption = 'Respons'#225'vel Ativo'
                DataBinding.DataField = 'ativo'
                DataBinding.DataSource = dsCad
                Properties.NullStyle = nssUnchecked
                Properties.ValueChecked = 'S'
                Properties.ValueUnchecked = 'N'
                TabOrder = 0
                Width = 113
              end
            end
          end
        end
        object cxTabSheet2: TcxTabSheet
          Caption = 'Alunos'
          ImageIndex = 1
          ExplicitWidth = 1214
          ExplicitHeight = 427
          object grbxAlunos: TcxGroupBox
            Left = 33
            Top = 55
            TabOrder = 1
            Height = 369
            Width = 474
            object Bevel3: TBevel
              Left = 2
              Top = 5
              Width = 470
              Height = 50
              Align = alTop
              ExplicitLeft = 216
              ExplicitTop = 160
              ExplicitWidth = 50
            end
            object cxGridAlunos: TcxGrid
              Left = 2
              Top = 55
              Width = 470
              Height = 312
              Align = alClient
              TabOrder = 2
              object cxGridAlunosDBTableView1: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                DataController.DataSource = dsAlunos
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsData.Deleting = False
                OptionsData.Editing = False
                OptionsData.Inserting = False
                OptionsSelection.CellSelect = False
                OptionsView.GroupByBox = False
                object cxGridAlunosDBTableView1nome: TcxGridDBColumn
                  Caption = 'Nome'
                  DataBinding.FieldName = 'aluno_id'
                  PropertiesClassName = 'TcxLookupComboBoxProperties'
                  Properties.KeyFieldNames = 'aluno_id'
                  Properties.ListColumns = <
                    item
                      FieldName = 'nome'
                    end>
                  Properties.ListSource = dsAlunosLookup
                  Width = 182
                end
                object cxGridAlunosDBTableView1sobrenome: TcxGridDBColumn
                  Caption = 'Sobrenome'
                  DataBinding.FieldName = 'aluno_id'
                  PropertiesClassName = 'TcxLookupComboBoxProperties'
                  Properties.KeyFieldNames = 'aluno_id'
                  Properties.ListColumns = <
                    item
                      FieldName = 'sobrenome'
                    end>
                  Properties.ListSource = dsAlunosLookup
                  Width = 189
                end
              end
              object cxGridAlunosLevel1: TcxGridLevel
                GridView = cxGridAlunosDBTableView1
              end
            end
            object btnAlunosAdd: TcxButton
              Left = 20
              Top = 17
              Width = 50
              Height = 25
              OptionsImage.ImageIndex = 0
              OptionsImage.Images = imgEnabled
              TabOrder = 0
              OnClick = btnAlunosAddClick
            end
            object btnAlunosExcluir: TcxButton
              Left = 76
              Top = 17
              Width = 50
              Height = 25
              OptionsImage.ImageIndex = 1
              OptionsImage.Images = imgEnabled
              TabOrder = 1
              OnClick = btnAlunosExcluirClick
            end
          end
          object cxLabel1: TcxLabel
            Left = 35
            Top = 32
            Caption = 'Alunos v'#237'nculos ao respons'#225'vel'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clRed
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            Transparent = True
          end
        end
      end
    end
    inherited TaShRelatorio: TTabSheet
      ExplicitWidth = 1222
      ExplicitHeight = 455
    end
  end
  inherited smCadPadrao: TsmCadPadrao
    BuscaSql.Strings = (
      'SELECT * FROM responsavel_escola re'
      ''
      
        'inner join  responsavel r on (r.responsavel_id = re.responsavel_' +
        'id)'
      ''
      'where re.escola_id = :escola_id')
    Tabela = 'responsavel'
    FieldsBusca = <
      item
        FieldName = 'responsavel_id'
        DisplayName = 'Responsavel_id'
        ShowCombo = False
        ShowGrid = False
        ShowSelect = True
        FieldType = ftAutoInc
      end
      item
        FieldName = 'nome'
        DisplayName = 'Nome'
        ShowCombo = True
        ShowGrid = True
        ShowSelect = True
        FieldType = ftString
      end
      item
        FieldName = 'sobrenome'
        DisplayName = 'Sobrenome'
        ShowCombo = True
        ShowGrid = True
        ShowSelect = True
        FieldType = ftString
      end
      item
        FieldName = 'sexo'
        DisplayName = 'Sexo'
        ShowCombo = False
        ShowGrid = False
        ShowSelect = False
        FieldType = ftString
      end
      item
        FieldName = 'rg'
        DisplayName = 'RG'
        ShowCombo = True
        ShowGrid = True
        ShowSelect = True
        FieldType = ftString
      end
      item
        FieldName = 'cpf'
        DisplayName = 'CPF'
        ShowCombo = True
        ShowGrid = True
        ShowSelect = True
        FieldType = ftString
      end
      item
        FieldName = 'ativo'
        DisplayName = 'Ativo'
        ShowCombo = False
        ShowGrid = False
        ShowSelect = False
        FieldType = ftString
      end
      item
        FieldName = 'email'
        DisplayName = 'Email'
        ShowCombo = True
        ShowGrid = True
        ShowSelect = True
        FieldType = ftString
      end
      item
        FieldName = 'informacoes_gerais'
        DisplayName = 'Informacoes_gerais'
        ShowCombo = False
        ShowGrid = False
        ShowSelect = False
        FieldType = ftMemo
      end
      item
        FieldName = 'escola_id'
        DisplayName = 'Escola_id'
        ShowCombo = False
        ShowGrid = False
        ShowSelect = False
        FieldType = ftInteger
      end>
    KeyField = 'responsavel_id'
    Left = 1152
    Top = 280
  end
  inherited AcLi: TActionList
    Left = 1152
    Top = 331
  end
  inherited imgEnabled: TImageList
    Left = 1152
    Top = 384
    Bitmap = {
      494C01010B000C00980010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099330000993300009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000993300009933000099330000000000000000
      0000000000000000000000000000000000000000000000000000993300009933
      0000000000000000000000000000000000000000000000000000993300009933
      0000993300009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099330000CC660000CC6600009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099330000CC660000CC660000993300000000
      000000000000000000000000000000000000000000000000000099330000CC66
      000099330000000000000000000000000000000000000000000099330000CC66
      0000CC6600009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099330000CC660000CC660000CC6600009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099330000CC660000CC660000CC6600009933
      000000000000000000000000000000000000000000000000000099330000CC66
      0000CC660000993300000000000000000000000000000000000099330000CC66
      0000CC6600009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      0000CC660000CC660000CC660000CC6600009933000099330000993300009933
      0000993300009933000099330000000000000000000099330000993300009933
      000099330000993300009933000099330000CC660000CC660000CC660000CC66
      000099330000000000000000000000000000000000000000000099330000CC66
      0000CC660000CC6600009933000000000000000000000000000099330000CC66
      0000CC6600009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099330000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC66000099330000000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000993300000000000000000000000000000000000099330000CC66
      0000CC660000CC660000CC66000099330000000000000000000099330000CC66
      0000CC6600009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC66000099330000000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC6600009933000000000000000000000000000099330000CC66
      0000CC660000CC660000CC660000CC660000993300000000000099330000CC66
      0000CC6600009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099330000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000CC66000099330000000000000000000099330000CC660000CC66
      0000CC660000CC660000CC660000CC660000CC660000CC660000CC660000CC66
      0000CC660000993300000000000000000000000000000000000099330000CC66
      0000CC660000CC660000CC66000099330000000000000000000099330000CC66
      0000CC6600009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009933
      0000CC660000CC660000CC660000CC6600009933000099330000993300009933
      0000993300009933000099330000000000000000000099330000993300009933
      000099330000993300009933000099330000CC660000CC660000CC660000CC66
      000099330000000000000000000000000000000000000000000099330000CC66
      0000CC660000CC6600009933000000000000000000000000000099330000CC66
      0000CC6600009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099330000CC660000CC660000CC6600009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099330000CC660000CC660000CC6600009933
      000000000000000000000000000000000000000000000000000099330000CC66
      0000CC660000993300000000000000000000000000000000000099330000CC66
      0000CC6600009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099330000CC660000CC6600009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099330000CC660000CC660000993300000000
      000000000000000000000000000000000000000000000000000099330000CC66
      000099330000000000000000000000000000000000000000000099330000CC66
      0000CC6600009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099330000993300009933000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000993300009933000099330000000000000000
      0000000000000000000000000000000000000000000000000000993300009933
      0000000000000000000000000000000000000000000000000000993300009933
      0000993300009933000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CCCCCC00C0C0C000E5E5
      E500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000097433F009743
      3F00B59A9B00B59A9B00B59A9B00B59A9B00B59A9B00B59A9B00B59A9B009330
      300097433F000000000000000000000000000000000000000000993300009933
      0000993300009933000099330000993300009933000099330000993300009933
      000099330000000000000000000000000000CCCCCC0066999900666699009999
      9900E5E5E5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000097433F00D6686800C660
      6000E5DEDF0092292A0092292A00E4E7E700E0E3E600D9DFE000CCC9CC008F20
      1F00AF46460097433F00000000000000000000000000CC996600FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900CC99
      6600CC9966009933000000000000000000000000000066CCFF003399CC006666
      990099999900E5E5E50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000097433F00D0656600C25F
      5F00E9E2E20092292A0092292A00E2E1E300E2E6E800DDE2E400CFCCCF008F22
      2200AD46460097433F000000000000000000CC996600CC996600CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
      660099330000CC996600993300000000000000000000CCCCFF0066CCFF003399
      CC006666990099999900E5E5E500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000993300009933
      0000993300009933000000000000000000000000000000000000000000000000
      0000993300009933000000000000000000000000000097433F00D0656500C15D
      5D00ECE4E40092292A0092292A00DFDDDF00E1E6E800E0E5E700D3D0D2008A1E
      1E00AB44440097433F000000000000000000CC996600FFFFFF00FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC
      9900CC9966009933000099330000000000000000000000000000CCCCFF0066CC
      FF003399CC006666990099999900E5E5E5000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099330000CC66
      0000CC6600009933000000000000000000000000000000000000000000009933
      0000CC6600009933000000000000000000000000000097433F00D0656500C15B
      5C00EFE6E600EDE5E500E5DEDF00E0DDDF00DFE0E200E0E1E300D6D0D200962A
      2A00B24A4A0097433F000000000000000000CC996600FFFFFF00FFCC9900FFCC
      9900FFCC9900FFCC990000CC000000990000FFCC99000000FF000000CC00FFCC
      9900CC996600CC9966009933000000000000000000000000000000000000CCCC
      FF0066CCFF003399CC0066669900CCCCCC00FFCCCC00CC999900CC999900CC99
      9900CCCC9900E5E5E5000000000000000000000000000000000099330000CC66
      0000CC660000993300000000000000000000000000000000000099330000CC66
      0000CC6600009933000000000000000000000000000097433F00CD626300C860
      6000C9676700CC727200CA727100C6696900C4646400CC6D6C00CA666700C55D
      5D00CD65650097433F000000000000000000CC996600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CC996600CC996600CC996600993300000000000000000000000000000000
      0000CCCCFF0066CCFF00B2B2B200CC999900CCCC9900F2EABF00FFFFCC00F2EA
      BF00F2EABF00CC999900ECC6D90000000000000000000000000099330000CC66
      0000CC6600009933000000000000000000000000000099330000CC660000CC66
      0000CC6600009933000000000000000000000000000097433F00B6555300C27B
      7800D39D9C00D7A7A500D8A7A600D8A6A500D7A09F00D5A09F00D7A9A700D8AB
      AB00CC66670097433F000000000000000000CC996600FFFFFF00FFCC9900FFCC
      9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC9900FFCC
      9900CC996600CC996600CC996600993300000000000000000000000000000000
      000000000000E5E5E500CC999900FFCC9900FFFFCC00FFFFCC00FFFFCC00FFFF
      FF00FFFFFF00FFFFFF00CC999900E5E5E500000000000000000099330000CC66
      0000CC66000099330000000000000000000099330000CC660000CC660000CC66
      0000CC6600009933000000000000000000000000000097433F00CC666700F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900CC66670097433F00000000000000000000000000CC996600CC996600CC99
      6600CC996600CC996600CC996600CC996600CC996600CC996600CC996600FFCC
      9900FFCC9900CC996600CC996600993300000000000000000000000000000000
      000000000000FFCCCC00CCCC9900FFFFCC00F2EABF00FFFFCC00FFFFCC00FFFF
      FF00FFFFFF00FFFFFF00F2EABF00CCCC9900000000000000000099330000CC66
      0000CC660000993300000000000099330000CC660000CC660000CC660000CC66
      0000CC6600009933000000000000000000000000000097433F00CC666700F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900CC66670097433F0000000000000000000000000000000000CC996600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CC99
      6600FFCC9900FFCC9900CC996600993300000000000000000000000000000000
      000000000000CCCC9900FFCC9900F2EABF00F2EABF00FFFFCC00FFFFCC00FFFF
      CC00FFFFFF00FFFFFF00F2EABF00CC999900000000000000000099330000CC66
      0000CC66000099330000000000000000000099330000CC660000CC660000CC66
      0000CC6600009933000000000000000000000000000097433F00CC666700F9F9
      F900CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00F9F9
      F900CC66670097433F000000000000000000000000000000000000000000CC99
      6600FFFFFF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500FFFFFF00CC99
      6600CC996600CC99660099330000000000000000000000000000000000000000
      000000000000CC999900F2EABF00F2EABF00F2EABF00F2EABF00FFFFCC00FFFF
      CC00FFFFCC00FFFFCC00FFFFCC00CC999900000000000000000099330000CC66
      0000CC6600009933000000000000000000000000000099330000CC660000CC66
      0000CC6600009933000000000000000000000000000097433F00CC666700F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900CC66670097433F000000000000000000000000000000000000000000CC99
      6600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CC9966000000000000000000000000000000000000000000000000000000
      000000000000CCCC9900F2EABF00FFFFCC00F2EABF00F2EABF00F2EABF00FFFF
      CC00FFFFCC00FFFFCC00F2EABF00CC999900000000000000000099330000CC66
      0000CC660000993300000000000000000000000000000000000099330000CC66
      0000CC6600009933000000000000000000000000000097433F00CC666700F9F9
      F900CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00F9F9
      F900CC66670097433F0000000000000000000000000000000000000000000000
      0000CC996600FFFFFF00E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500FFFF
      FF00CC9966000000000000000000000000000000000000000000000000000000
      000000000000FFCCCC00CCCC9900FFFFFF00FFFFFF00F2EABF00F2EABF00F2EA
      BF00F2EABF00FFFFCC00CCCC9900CCCC9900000000000000000099330000CC66
      0000CC6600009933000000000000000000000000000000000000000000009933
      0000CC6600009933000000000000000000000000000097433F00CC666700F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900CC66670097433F0000000000000000000000000000000000000000000000
      0000CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CC99660000000000000000000000000000000000000000000000
      000000000000E5E5E500CC999900ECC6D900FFFFFF00FFFFCC00F2EABF00F2EA
      BF00F2EABF00FFCC9900CC999900E5E5E5000000000000000000993300009933
      0000993300009933000000000000000000000000000000000000000000000000
      000099330000993300000000000000000000000000000000000097433F00F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F90097433F000000000000000000000000000000000000000000000000000000
      000000000000CC996600CC996600CC996600CC996600CC996600CC996600CC99
      6600CC996600CC99660000000000000000000000000000000000000000000000
      00000000000000000000FFCCCC00CC999900FFCCCC00F2EABF00F2EABF00F2EA
      BF00CCCC9900CC999900FFCCCC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E5E5E500CCCC9900CC999900CC999900CC99
      9900CC999900E5E5E50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006B635A0073635A000000
      00007B736B005A524A006B635A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000732DE000732DE000000000000000000000000000000
      000000000000000000006BAD840021842900218429006BAD8400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005A525200D69494009C7B7B008473
      73009C737300DE8C8C004A42420000000000000000000732DE000732DE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000732DE000732DE00000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006B636B008C6B6B00EFA5A500FFAD
      AD00AD7B7B00635252000000000000000000000000000732DE000732DE000732
      DE00000000000000000000000000000000000000000000000000000000000000
      00000732DE000732DE0000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008C7B7B00DE9C
      9C0052424200000000000000000000000000000000000732DE000732DD000732
      DE000732DE000000000000000000000000000000000000000000000000000732
      DE000732DE000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006B635A0073635200736352007363
      52007363520073635200736352007363520073635200736352007B736B00DE9C
      9C003929210073635A0073635A0084736B0000000000000000000534ED000732
      DF000732DE000732DE00000000000000000000000000000000000732DE000732
      DE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006B635A00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00847B7B00DEA5
      A500524A4200FFFFFF00635A5A0073635A000000000000000000000000000000
      00000732DE000732DE000732DD00000000000732DD000732DE000732DE000000
      000000000000000000000000000000000000000000006BAD8400218429002184
      290021842900218429002184290094DE8C0039B5520021842900218429002184
      290021842900218429006BAD840000000000000000006B84C6000021A5000021
      A5000021A5000021A5000021A5000021A5000021A5000021A5000021A5000021
      A5000021A5000021A5006B84C600000000006B635A00FFFFFF00E7390000D639
      0000CE310000B5310000B5310000A5290000A5290000FFFFFF00847B7B00DEA5
      A50063525200FFFFFF00635A5A00736352000000000000000000000000000000
      0000000000000732DD000633E6000633E6000633E9000732DC00000000000000
      0000000000000000000000000000000000000000000063A5630039B5520039B5
      520039B5520039B5520039B5520039B5520039B5520039B5520039B5520039B5
      520039B5520039B552002184290000000000000000000021A5009494F7000029
      E7000029E7000029E7000029E7000029E7000029E7000029E7000029E7000029
      E7000029E7000029E7000021A500000000006B635A00FFFFFF00E7390000D639
      0000CE310000B5310000B5310000A5290000A5290000FFFFFF00847B7B00DEAD
      AD0063525200FFFFFF00635A5A00735A52000000000000000000000000000000
      000000000000000000000633E3000732E3000534EF0000000000000000000000
      0000000000000000000000000000000000000000000063A5630094DE8C0094DE
      8C0094DE8C0094DE8C0094DE8C0094DE8C0039B5520094DE8C0094DE8C0094DE
      8C0094DE8C0094DE8C002184290000000000000000000021A500B5C6FF009CBD
      FF009CBDFF009CB5FF009CB5FF009CB5FF00638CF700638CF700638CF700638C
      F700526BF700526BF7000021A500000000006B635A00FFFFFF00E7390000D639
      0000CE310000B5310000B5310000A5290000A5290000FFFFFF00847B7B00DEB5
      B50063525200FFFFFF00635A5A00735A52000000000000000000000000000000
      0000000000000732DD000534ED000533E9000434EF000434F500000000000000
      000000000000000000000000000000000000000000006BAD840063A5630063A5
      630063A5630063A5630063A5630094DE8C0039B5520021842900218429002184
      290021842900218429006BAD840000000000000000006B84C6000021A5000021
      A5000021A5000021A5000021A5000021A5000021A5000021A5000021A5000021
      A5000021A5000021A5006B84C600000000006B635A00FFFFFF00E7390000D639
      0000CE310000B5310000B5310000A5290000A5290000FFFFFF0084847B00DEB5
      B50063525200FFFFFF00635A5A00735A52000000000000000000000000000000
      00000434F4000534EF000533EB0000000000000000000434F4000335F8000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006B635A00FFFFFF00E7390000D639
      0000CE310000B5310000B5310000A5290000A5290000FFFFFF0084848400DEBD
      BD0063525200FFFFFF00635A5200735A52000000000000000000000000000335
      FC000534EF000434F800000000000000000000000000000000000335FC000335
      FB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006B635A00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700EFEFEF0084848400DEBD
      BD005A524A00FFFFFF00635A520073635A0000000000000000000335FB000335
      FB000335FC000000000000000000000000000000000000000000000000000335
      FB000335FB000000000000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006B635A006B635A006B635A006B63
      5A006B635A006B635A006B635A006B635A00635A5A005A524A00847B7B00DEC6
      C6004A4239006B635A006B635A0073635A00000000000335FB000335FB000335
      FB00000000000000000000000000000000000000000000000000000000000000
      0000000000000335FB0000000000000000000000000000000000000000000000
      0000000000000000000063A5630094DE8C0039B5520021842900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000848C8C005A525200948C8C00FFE7
      E7005A525200524A42006B5A5200000000000335FB000335FB000335FB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006BAD840063A5630063A563006BAD8400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000848C8C00EFEFEF00D6C6C6006B63
      6300DEC6C600FFE7E7004A4A4A00000000000335FB000335FB00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006B636300848C8C00948C8C000000
      0000848C8C00948C8C00948C8C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF0000FFFFFFFFFFFF0000
      FFFFFFFFFFFF0000FC7FFE3FCFC30000F87FFE1FC7C30000F07FFE0FC3C30000
      E0018007C1C30000C0018003C0C3000080018001C0430000C0018003C0C30000
      E0018007C1C30000F07FFE0FC3C30000F87FFE1FC7C30000FC7FFE3FCFC30000
      FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFF8FFFFFFFC007C00707FFFFFF
      8003800383FFFFFF8003000181FFC3F380030001C0FFC3E380030001E003C3C3
      80030000F001C38380030000F800C30380038000F800C2038003C000F800C303
      8003E001F800C3838003E007F800C3C38003F007F800C3E38003F003F800C3F3
      C007F803FC01FFFFFFFFFFFFFE03FFFFFFFFFFFFFF91FFFCFC3FFFFFFF019FF9
      FC3FFFFFFF038FF3FC3FFFFFFFC787E7FC3FFFFF0000C3CFFC3FFFFF0000F11F
      800180010000F83F800180010000FC7F800180010000F83F800180010000F19F
      FC3FFFFF0000E3CFFC3FFFFF0000C7E7FC3FFFFF00008FFBFC3FFFFFFF011FFF
      FC3FFFFFFF013FFFFFFFFFFFFF11FFFF00000000000000000000000000000000
      000000000000}
  end
  inherited imgDisabled: TImageList
    Left = 1152
    Top = 432
    Bitmap = {
      494C01010B000C00980010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900999999009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000999999009999990099999900000000000000
      0000000000000000000000000000000000000000000000000000999999009999
      9900000000000000000000000000000000000000000000000000999999009999
      9900999999009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099999900CCCCCC00CCCCCC009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099999900CCCCCC00CCCCCC00999999000000
      000000000000000000000000000000000000000000000000000099999900CCCC
      CC0099999900000000000000000000000000000000000000000099999900CCCC
      CC00CCCCCC009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099999900CCCCCC00CCCCCC00CCCCCC009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099999900CCCCCC00CCCCCC00CCCCCC009999
      990000000000000000000000000000000000000000000000000099999900CCCC
      CC00CCCCCC00999999000000000000000000000000000000000099999900CCCC
      CC00CCCCCC009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC00CCCCCC00CCCCCC009999990099999900999999009999
      9900999999009999990099999900000000000000000099999900999999009999
      990099999900999999009999990099999900CCCCCC00CCCCCC00CCCCCC00CCCC
      CC0099999900000000000000000000000000000000000000000099999900CCCC
      CC00CCCCCC00CCCCCC009999990000000000000000000000000099999900CCCC
      CC00CCCCCC009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099999900CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00999999000000000000000000000000000000000099999900CCCC
      CC00CCCCCC00CCCCCC00CCCCCC0099999900000000000000000099999900CCCC
      CC00CCCCCC009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC009999990000000000000000000000000099999900CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00999999000000000099999900CCCC
      CC00CCCCCC009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099999900CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC0099999900000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00999999000000000000000000000000000000000099999900CCCC
      CC00CCCCCC00CCCCCC00CCCCCC0099999900000000000000000099999900CCCC
      CC00CCCCCC009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009999
      9900CCCCCC00CCCCCC00CCCCCC00CCCCCC009999990099999900999999009999
      9900999999009999990099999900000000000000000099999900999999009999
      990099999900999999009999990099999900CCCCCC00CCCCCC00CCCCCC00CCCC
      CC0099999900000000000000000000000000000000000000000099999900CCCC
      CC00CCCCCC00CCCCCC009999990000000000000000000000000099999900CCCC
      CC00CCCCCC009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000099999900CCCCCC00CCCCCC00CCCCCC009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099999900CCCCCC00CCCCCC00CCCCCC009999
      990000000000000000000000000000000000000000000000000099999900CCCC
      CC00CCCCCC00999999000000000000000000000000000000000099999900CCCC
      CC00CCCCCC009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000099999900CCCCCC00CCCCCC009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000099999900CCCCCC00CCCCCC00999999000000
      000000000000000000000000000000000000000000000000000099999900CCCC
      CC0099999900000000000000000000000000000000000000000099999900CCCC
      CC00CCCCCC009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000099999900999999009999990000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000999999009999990099999900000000000000
      0000000000000000000000000000000000000000000000000000999999009999
      9900000000000000000000000000000000000000000000000000999999009999
      9900999999009999990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CCCCCC00C0C0C000E5E5
      E500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000999999009999
      9900999999009999990099999900999999009999990099999900999999009999
      9900999999009999990099999900000000000000000000000000999999009999
      9900999999009999990099999900999999009999990099999900999999009999
      990099999900000000000000000000000000CCCCCC00B2B2B200999999009999
      9900E5E5E5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900CCCCCC00CCCC
      CC0099999900E5E5E500CCCCCC0099999900E5E5E500E5E5E500E5E5E5009999
      9900CCCCCC00CCCCCC00999999000000000000000000B2B2B200CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00B2B2
      B200B2B2B20099999900000000000000000000000000CCCCCC00B2B2B2009999
      990099999900E5E5E50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000099999900CCCCCC00CCCC
      CC0099999900E5E5E500CCCCCC0099999900E5E5E500E5E5E500E5E5E5009999
      9900CCCCCC00CCCCCC009999990000000000B2B2B200B2B2B200B2B2B200B2B2
      B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2
      B20099999900B2B2B200999999000000000000000000E5E5E500CCCCCC00B2B2
      B2009999990099999900E5E5E500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000999999009999
      9900999999009999990000000000000000000000000000000000000000000000
      0000999999009999990000000000000000000000000099999900CCCCCC00CCCC
      CC0099999900E5E5E500CCCCCC0099999900E5E5E500E5E5E500E5E5E5009999
      9900CCCCCC00CCCCCC009999990000000000B2B2B20000000000CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00B2B2B2009999990099999900000000000000000000000000E5E5E500CCCC
      CC00B2B2B2009999990099999900E5E5E5000000000000000000000000000000
      000000000000000000000000000000000000000000000000000099999900CCCC
      CC00CCCCCC009999990000000000000000000000000000000000000000009999
      9900CCCCCC009999990000000000000000000000000099999900CCCCCC00CCCC
      CC0099999900E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E5009999
      9900CCCCCC00CCCCCC009999990000000000B2B2B20000000000CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00B2B2B20099999900CCCCCC00B2B2B20099999900CCCC
      CC00B2B2B200B2B2B2009999990000000000000000000000000000000000E5E5
      E500CCCCCC00B2B2B20099999900CCCCCC00E5E5E50099999900999999009999
      9900B2B2B200E5E5E5000000000000000000000000000000000099999900CCCC
      CC00CCCCCC00999999000000000000000000000000000000000099999900CCCC
      CC00CCCCCC009999990000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00999999009999990099999900999999009999990099999900CCCC
      CC00CCCCCC00CCCCCC009999990000000000B2B2B20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B2B2B200B2B2B200B2B2B200999999000000000000000000000000000000
      0000E5E5E500CCCCCC00B2B2B20099999900B2B2B200CCCCCC00CCCCCC00CCCC
      CC00CCCCCC0099999900E5E5E50000000000000000000000000099999900CCCC
      CC00CCCCCC009999990000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC009999990000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC009999990000000000B2B2B20000000000CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00B2B2B200B2B2B200B2B2B200999999000000000000000000000000000000
      000000000000E5E5E50099999900E5E5E500CCCCCC00CCCCCC00CCCCCC00E5E5
      E500E5E5E500E5E5E50099999900E5E5E500000000000000000099999900CCCC
      CC00CCCCCC0099999900000000000000000099999900CCCCCC00CCCCCC00CCCC
      CC00CCCCCC009999990000000000000000000000000099999900CCCCCC00CCCC
      CC00999999009999990099999900999999009999990099999900999999009999
      9900CCCCCC00CCCCCC00999999000000000000000000B2B2B200B2B2B200B2B2
      B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200CCCC
      CC00CCCCCC00B2B2B200B2B2B200999999000000000000000000000000000000
      000000000000E5E5E500B2B2B200CCCCCC00CCCCCC00CCCCCC00CCCCCC00E5E5
      E500E5E5E500E5E5E500CCCCCC00B2B2B200000000000000000099999900CCCC
      CC00CCCCCC00999999000000000099999900CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC009999990000000000000000000000000099999900CCCCCC009999
      9900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0099999900CCCCCC0099999900000000000000000000000000B2B2B2000000
      000000000000000000000000000000000000000000000000000000000000B2B2
      B200CCCCCC00CCCCCC00B2B2B200999999000000000000000000000000000000
      000000000000B2B2B200E5E5E500CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00E5E5E500E5E5E500CCCCCC0099999900000000000000000099999900CCCC
      CC00CCCCCC0099999900000000000000000099999900CCCCCC00CCCCCC00CCCC
      CC00CCCCCC009999990000000000000000000000000099999900CCCCCC009999
      9900FFFFFF00999999009999990099999900999999009999990099999900FFFF
      FF0099999900CCCCCC009999990000000000000000000000000000000000B2B2
      B20000000000CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC0000000000B2B2
      B200B2B2B200B2B2B20099999900000000000000000000000000000000000000
      00000000000099999900CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC0099999900000000000000000099999900CCCC
      CC00CCCCCC009999990000000000000000000000000099999900CCCCCC00CCCC
      CC00CCCCCC009999990000000000000000000000000099999900CCCCCC009999
      9900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0099999900CCCCCC009999990000000000000000000000000000000000B2B2
      B200000000000000000000000000000000000000000000000000000000000000
      0000B2B2B2000000000000000000000000000000000000000000000000000000
      000000000000B2B2B200CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC0099999900000000000000000099999900CCCC
      CC00CCCCCC00999999000000000000000000000000000000000099999900CCCC
      CC00CCCCCC009999990000000000000000000000000099999900E5E5E5009999
      9900FFFFFF00999999009999990099999900999999009999990099999900FFFF
      FF00999999009999990099999900000000000000000000000000000000000000
      0000B2B2B20000000000CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC000000
      0000B2B2B2000000000000000000000000000000000000000000000000000000
      000000000000E5E5E500B2B2B200E5E5E500E5E5E500CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00B2B2B200B2B2B200000000000000000099999900CCCC
      CC00CCCCCC009999990000000000000000000000000000000000000000009999
      9900CCCCCC009999990000000000000000000000000099999900CCCCCC009999
      9900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0099999900CCCCCC0099999900000000000000000000000000000000000000
      0000B2B2B2000000000000000000000000000000000000000000000000000000
      000000000000B2B2B20000000000000000000000000000000000000000000000
      000000000000E5E5E50099999900E5E5E500E5E5E500CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00E5E5E50099999900E5E5E5000000000000000000999999009999
      9900999999009999990000000000000000000000000000000000000000000000
      0000999999009999990000000000000000000000000099999900999999009999
      9900999999009999990099999900999999009999990099999900999999009999
      9900999999009999990099999900000000000000000000000000000000000000
      000000000000B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2
      B200B2B2B200B2B2B20000000000000000000000000000000000000000000000
      00000000000000000000E5E5E50099999900E5E5E500CCCCCC00CCCCCC00CCCC
      CC00B2B2B20099999900E5E5E500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E5E5E500B2B2B20099999900999999009999
      990099999900E5E5E50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000081818100818181000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000808080008080
      80008080800080808000FFFFFF00000000000000000081818100818181000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008181810081818100000000000000000000000000000000000000
      00000000000000000000000000008080800080808000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      8000808080000000000000000000000000000000000081818100818181008181
      8100000000000000000000000000000000000000000000000000000000000000
      0000818181008181810000000000000000000000000000000000000000000000
      00000000000000000000000000008080800080808000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      800080808000FFFFFF00FFFFFF00FFFFFF000000000081818100818181008181
      8100818181000000000000000000000000000000000000000000000000008181
      8100818181000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008080800080808000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00808080008080
      800080808000FFFFFF0080808000FFFFFF000000000000000000888888008282
      8200818181008181810000000000000000000000000000000000818181008181
      8100000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008080800080808000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000808080008080
      80008080800080808000808080008080800080808000FFFFFF00808080008080
      800080808000FFFFFF0080808000FFFFFF000000000000000000000000000000
      0000818181008181810081818100000000008181810081818100818181000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF008080800080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000080808000808080008080
      80008080800080808000808080008080800080808000FFFFFF00808080008080
      800080808000FFFFFF0080808000FFFFFF000000000000000000000000000000
      0000000000008181810085858500858585008686860080808000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000FFFFFF00000000000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000FFFFFF00000000000000000080808000808080008080
      80008080800080808000808080008080800080808000FFFFFF00808080008080
      800080808000FFFFFF0080808000FFFFFF000000000000000000000000000000
      0000000000000000000083838300848484008989890000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800000000000000000000000000080808000808080008080
      80008080800080808000808080008080800080808000FFFFFF00808080008080
      800080808000FFFFFF0080808000FFFFFF000000000000000000000000000000
      000000000000818181008888880086868600888888008B8B8B00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008080800080808000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000808080008080
      80008080800080808000808080008080800080808000FFFFFF00808080008080
      800080808000FFFFFF0080808000FFFFFF000000000000000000000000000000
      00008B8B8B00898989008787870000000000000000008B8B8B008C8C8C000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008080800080808000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000808080008080
      80008080800080808000808080008080800080808000FFFFFF00808080008080
      800080808000FFFFFF0080808000FFFFFF000000000000000000000000008E8E
      8E00898989008D8D8D00000000000000000000000000000000008E8E8E008E8E
      8E00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008080800080808000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000808080008080
      8000808080008080800080808000808080008080800000000000808080008080
      800080808000FFFFFF0080808000FFFFFF0000000000000000008E8E8E008E8E
      8E008E8E8E000000000000000000000000000000000000000000000000008E8E
      8E008E8E8E000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008080800080808000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      800080808000FFFFFF008080800080808000000000008E8E8E008E8E8E008E8E
      8E00000000000000000000000000000000000000000000000000000000000000
      0000000000008E8E8E0000000000000000000000000000000000000000000000
      0000000000000000000000000000808080008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      800080808000FFFFFF0000000000000000008E8E8E008E8E8E008E8E8E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000808080008080
      8000808080008080800000000000000000008E8E8E008E8E8E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF0000FFFFFFFFFFFF0000
      FFFFFFFFFFFF0000FC7FFE3FCFC30000F87FFE1FC7C30000F07FFE0FC3C30000
      E0018007C1C30000C0018003C0C3000080018001C0430000C0018003C0C30000
      E0018007C1C30000F07FFE0FC3C30000F87FFE1FC7C30000FC7FFE3FCFC30000
      FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFF8FFFFFFFC001C00707FFFFFF
      8001800383FFFFFF8001000181FFC3F380014001C0FFC3E380014001E003C3C3
      80017FF0F001C38380014000F800C30380018000F800C2038001DFE0F800C303
      8001E821F800C3838001EFF7F800C3C38001F417F800C3E38001F7FBF800C3F3
      8001F803FC01FFFFFFFFFFFFFE03FFFFFFFFFFFFFFD1FFFCFF3FFFFFFF819FF9
      FE3FFFFFFFC78FF3FE3FFFFFFFC087E7FE3FFFFFC000C3CFFE3FFFFF8000F11F
      E001E0018000F83FC001C0018000FC7FC003C0038000F83FFE3FFFFF8000F19F
      FE3FFFFF8000E3CFFE3FFFFF8040C7E7FE3FFFFFFFC08FFBFE7FFFFFFFC31FFF
      FFFFFFFFFF833FFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  inherited fdqCad: TFDQuery
    BeforeOpen = fdqCadBeforeOpen
    AfterOpen = fdqCadAfterOpen
    OnNewRecord = fdqCadNewRecord
    CachedUpdates = True
    Connection = DM.FDConnection
    SchemaAdapter = FDSchemaAdapter
    SQL.Strings = (
      'SELECT * FROM responsavel_escola re'#10#10
      'where re.responsavel_id = :responsavel_id'#13#10#10
      #13'and re.escola_id = :escola_id'#10)
    Left = 1008
    Top = 280
    ParamData = <
      item
        Name = 'RESPONSAVEL_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ESCOLA_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdqCadresponsavel_id: TIntegerField
      FieldName = 'responsavel_id'
      Origin = 'responsavel_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqCadescola_id: TIntegerField
      FieldName = 'escola_id'
      Origin = 'escola_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqCadativo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ativo'
      Origin = 'ativo'
      FixedChar = True
      Size = 1
    end
    object fdqCadinformacoes_gerais: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'informacoes_gerais'
      Origin = 'informacoes_gerais'
      BlobType = ftMemo
    end
    object fdqCadresponsavel_tipo_id: TSmallintField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tipo de Respons'#225'vel'
      FieldName = 'responsavel_tipo_id'
      Origin = 'responsavel_tipo_id'
    end
  end
  inherited dsCad: TDataSource
    Left = 1008
    Top = 336
  end
  inherited dsBusca: TDataSource
    Left = 1072
    Top = 336
  end
  inherited fdqBusca: TFDQuery
    BeforeOpen = fdqBuscaBeforeOpen
    Connection = DM.FDConnection
    SQL.Strings = (
      'SELECT * FROM responsavel_escola re'#10#10
      
        'inner join  responsavel r on (r.responsavel_id = re.responsavel_' +
        'id)'#10#10
      'where re.responsavel_id = :responsavel_id'#13#10#10
      #10'and re.escola_id = :escola_id'#10)
    Left = 1072
    Top = 280
    ParamData = <
      item
        Name = 'RESPONSAVEL_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ESCOLA_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  inherited FDSchemaAdapter: TFDSchemaAdapter
    Left = 1072
    Top = 392
  end
  object fdqResponsavelTipo: TFDQuery
    Connection = DM.FDConnection
    SQL.Strings = (
      'SELECT * FROM responsavel_tipo'
      'order by descricao')
    Left = 934
    Top = 280
  end
  object dsResponsavelTipo: TDataSource
    DataSet = fdqResponsavelTipo
    Left = 934
    Top = 336
  end
  object fdqTelefoneTipo: TFDQuery
    Connection = DM.FDConnection
    SQL.Strings = (
      'select * from telefone_tipo t'
      'order by t.descricao')
    Left = 776
    Top = 280
  end
  object dsTelefoneTipo: TDataSource
    DataSet = fdqTelefoneTipo
    Left = 776
    Top = 336
  end
  object dsTelefone: TDataSource
    DataSet = fdqTelefone
    Left = 856
    Top = 336
  end
  object fdqTelefone: TFDQuery
    BeforeInsert = fdqTelefoneBeforeInsert
    BeforeEdit = fdqTelefoneBeforeEdit
    IndexFieldNames = 'responsavel_id'
    ConstraintsEnabled = True
    MasterSource = dsCad
    MasterFields = 'responsavel_id'
    DetailFields = 'responsavel_id'
    Connection = DM.FDConnection
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    UpdateOptions.AutoIncFields = 'responsavel_telefone_id'
    SQL.Strings = (
      'SELECT * FROM responsavel_telefone t'
      'where t.responsavel_id = :responsavel_id')
    Left = 856
    Top = 280
    ParamData = <
      item
        Name = 'RESPONSAVEL_ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Value = Null
      end>
  end
  object fdqAlunos: TFDQuery
    BeforeInsert = fdqAlunosBeforeInsert
    BeforeEdit = fdqAlunosBeforeEdit
    BeforeDelete = fdqAlunosBeforeDelete
    AfterScroll = fdqAlunosAfterScroll
    CachedUpdates = True
    IndexFieldNames = 'responsavel_id'
    MasterSource = dsCad
    MasterFields = 'responsavel_id'
    Connection = DM.FDConnection
    SchemaAdapter = FDSchemaAdapter
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'select * from responsavel_aluno ra'#10' '
      'where responsavel_id = :responsavel_id'#10)
    Left = 616
    Top = 280
    ParamData = <
      item
        Name = 'RESPONSAVEL_ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Value = Null
      end>
    object fdqAlunosresponsavel_id: TIntegerField
      FieldName = 'responsavel_id'
      Origin = 'responsavel_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqAlunosaluno_id: TIntegerField
      FieldName = 'aluno_id'
      Origin = 'aluno_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dsAlunos: TDataSource
    DataSet = fdqAlunos
    OnStateChange = dsAlunosStateChange
    Left = 616
    Top = 336
  end
  object fdqAlunosLookup: TFDQuery
    BeforeOpen = fdqAlunosLookupBeforeOpen
    Connection = DM.FDConnection
    SQL.Strings = (
      'SELECT * FROM  aluno '
      'where escola_id = :escola_id ')
    Left = 688
    Top = 280
    ParamData = <
      item
        Name = 'ESCOLA_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object dsAlunosLookup: TDataSource
    DataSet = fdqAlunosLookup
    Left = 688
    Top = 336
  end
  object dsResp: TDataSource
    DataSet = fdqResp
    Left = 624
    Top = 464
  end
  object fdqResp: TFDQuery
    Connection = DM.FDConnection
    SQL.Strings = (
      'SELECT * FROM responsavel r'#13#10#10
      ''
      'where r.responsavel_id = :responsavel_id'#10)
    Left = 624
    Top = 416
    ParamData = <
      item
        Name = 'RESPONSAVEL_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 75
      end>
  end
end
