object ServerMethods: TServerMethods
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 672
  Width = 279
  object QParticpante: TSQLDataSet
    CommandText = 
      'SELECT TPARTICIPANTE.*, TCIDADE.CIDNOME FROM TPARTICIPANTE'#13#10'LEFT' +
      ' OUTER JOIN TCIDADE ON TCIDADE.CIDCODIGO ='#13#10'TPARTICIPANTE.PARCID' +
      'ADE'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConn
    Left = 24
    Top = 16
    object QParticpantePARCOD: TIntegerField
      FieldName = 'PARCOD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QParticpantePARNOME: TStringField
      FieldName = 'PARNOME'
      Size = 250
    end
    object QParticpantePARCOMPLEMENTO: TStringField
      FieldName = 'PARCOMPLEMENTO'
      Size = 250
    end
    object QParticpantePARENDERECO: TStringField
      FieldName = 'PARENDERECO'
      Size = 250
    end
    object QParticpantePARBAIRRO: TStringField
      FieldName = 'PARBAIRRO'
      Size = 100
    end
    object QParticpantePARFONE1: TStringField
      FieldName = 'PARFONE1'
    end
    object QParticpantePARFONE2: TStringField
      FieldName = 'PARFONE2'
    end
    object QParticpantePARFONE3: TStringField
      FieldName = 'PARFONE3'
    end
    object QParticpantePARFONE4: TStringField
      FieldName = 'PARFONE4'
    end
    object QParticpantePAROBS: TStringField
      FieldName = 'PAROBS'
      Size = 250
    end
    object QParticpantePARLOCALIZACAO: TStringField
      FieldName = 'PARLOCALIZACAO'
      Size = 250
    end
    object QParticpantePARCIDADE: TIntegerField
      FieldName = 'PARCIDADE'
    end
    object QParticpantePARFOTO: TBlobField
      FieldName = 'PARFOTO'
      Size = 1
    end
    object QParticpantePARGRUPO: TIntegerField
      FieldName = 'PARGRUPO'
    end
    object QParticpantePARGRUPO1: TIntegerField
      FieldName = 'PARGRUPO1'
    end
    object QParticpantePARCPF: TStringField
      FieldName = 'PARCPF'
      Size = 14
    end
    object QParticpantePARCNPJ: TStringField
      FieldName = 'PARCNPJ'
      Size = 18
    end
    object QParticpantePARIDENTIDADE: TStringField
      FieldName = 'PARIDENTIDADE'
    end
    object QParticpanteCIDNOME: TStringField
      FieldName = 'CIDNOME'
      Size = 100
    end
  end
  object DSPParticipante: TDataSetProvider
    DataSet = QParticpante
    Options = [poPropogateChanges, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = DSPParticipanteBeforeUpdateRecord
    Left = 104
    Top = 16
  end
  object QCidade: TSQLDataSet
    CommandText = 'SELECT * FROM TCIDADE'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConn
    Left = 24
    Top = 80
    object QCidadeCIDCODIGO: TIntegerField
      FieldName = 'CIDCODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCidadeCIDNOME: TStringField
      FieldName = 'CIDNOME'
      Size = 100
    end
    object QCidadeCIDESTADO: TStringField
      FieldName = 'CIDESTADO'
      Size = 5
    end
  end
  object DSPCidade: TDataSetProvider
    DataSet = QCidade
    Options = [poPropogateChanges, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = DSPCidadeBeforeUpdateRecord
    Left = 104
    Top = 80
  end
  object QAssociacao: TSQLDataSet
    CommandText = 'SELECT  * '#13#10'FROM TASSOCIACAO '#13#10'WHERE ASSPRODUTO = :PROCODIGO'
    DbxCommandType = 'Dbx.SQL'
    DataSource = DSProduto
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PROCODIGO'
        ParamType = ptInput
      end>
    SQLConnection = SQLConn
    Left = 24
    Top = 138
    object QAssociacaoASSCODIGO: TIntegerField
      FieldName = 'ASSCODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QAssociacaoASSPARTICIPANTE: TIntegerField
      FieldName = 'ASSPARTICIPANTE'
    end
    object QAssociacaoASSPRODUTO: TIntegerField
      FieldName = 'ASSPRODUTO'
    end
    object QAssociacaoASSOBS: TStringField
      FieldName = 'ASSOBS'
      Size = 250
    end
  end
  object QProduto: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'SELECT TPRODUTO.*, PARNOME'#13#10'FROM TPRODUTO '#13#10'LEFT OUTER JOIN TPAR' +
      'TICIPANTE ON PROPROPRIETARIO = PARCOD'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = SQLConn
    Left = 24
    Top = 194
    object QProdutoPROCODIGO: TIntegerField
      FieldName = 'PROCODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QProdutoPRONOME: TStringField
      FieldName = 'PRONOME'
      Size = 250
    end
    object QProdutoPROREFERENCIA: TStringField
      FieldName = 'PROREFERENCIA'
      Size = 250
    end
    object QProdutoPROPRECO: TFMTBCDField
      FieldName = 'PROPRECO'
      Precision = 15
      Size = 2
    end
    object QProdutoPROQUANTIDADE: TIntegerField
      FieldName = 'PROQUANTIDADE'
    end
    object QProdutoPROFOTO: TBlobField
      FieldName = 'PROFOTO'
      Size = 1
    end
    object QProdutoPROCOMPLEMENTO: TStringField
      FieldName = 'PROCOMPLEMENTO'
      Size = 250
    end
    object QProdutoPROPESO: TFMTBCDField
      FieldName = 'PROPESO'
      Precision = 15
      Size = 2
    end
    object QProdutoPROTAMANHO: TStringField
      FieldName = 'PROTAMANHO'
      Size = 250
    end
    object QProdutoPROOBS: TStringField
      FieldName = 'PROOBS'
      Size = 250
    end
    object QProdutoPROPROPRIETARIO: TIntegerField
      FieldName = 'PROPROPRIETARIO'
    end
    object QProdutoPROCONTATO: TStringField
      FieldName = 'PROCONTATO'
      Size = 50
    end
    object QProdutoPARNOME: TStringField
      FieldName = 'PARNOME'
      ProviderFlags = []
      Size = 250
    end
  end
  object DSPProduto: TDataSetProvider
    DataSet = QProduto
    Options = [poFetchBlobsOnDemand, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    BeforeUpdateRecord = DSPProdutoBeforeUpdateRecord
    Left = 104
    Top = 194
  end
  object DSProduto: TDataSource
    DataSet = QProduto
    Left = 184
    Top = 200
  end
  object SQLConn: TSQLConnection
    ConnectionName = 'Participantes'
    DriverName = 'Firebird'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbxfb.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXFirebird'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver160.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=16.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXFirebirdMetaDataCommandFactory,DbxFire' +
        'birdDriver160.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXFirebirdMetaDataCommandF' +
        'actory,Borland.Data.DbxFirebirdDriver,Version=16.0.0.0,Culture=n' +
        'eutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverINTERBASE'
      'LibraryName=dbxfb.dll'
      'LibraryNameOsx=libsqlfb.dylib'
      'VendorLib=fbclient.dll'
      'VendorLibWin64=fbclient.dll'
      'VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird'
      
        'Database=D:\Wilian\Participantes\participantes-code\PARTICIPANTE' +
        'S.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'SQLDialect=3'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'TrimChar=False'
      'BlobSize=-1'
      'ErrorResourceFile='
      'RoleName=RoleName'
      'ServerCharSet='
      'Trim Char=False')
    VendorLib = 'fbclient.dll'
    Left = 24
    Top = 594
  end
  object QExec: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConn
    Left = 104
    Top = 594
  end
  object QGrupo: TSQLDataSet
    CommandText = 'SELECT * FROM TGRUPO'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConn
    Left = 24
    Top = 250
    object QGrupoGRUCODIGO: TIntegerField
      FieldName = 'GRUCODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QGrupoGRUNOM: TStringField
      FieldName = 'GRUNOM'
      Size = 50
    end
    object QGrupoGRUCOR: TStringField
      FieldName = 'GRUCOR'
    end
    object QGrupoGRUPESO: TFMTBCDField
      FieldName = 'GRUPESO'
      Precision = 15
      Size = 2
    end
    object QGrupoGRURESPONSAVEL: TIntegerField
      FieldName = 'GRURESPONSAVEL'
    end
  end
  object DSPGrupo: TDataSetProvider
    DataSet = QGrupo
    BeforeUpdateRecord = DSPGrupoBeforeUpdateRecord
    Left = 104
    Top = 250
  end
  object QTarefa: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 'SELECT * FROM TTAREFA'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConn
    Left = 24
    Top = 314
    object QTarefaTARCODIGO: TIntegerField
      FieldName = 'TARCODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QTarefaTARNOME: TStringField
      FieldName = 'TARNOME'
      Size = 100
    end
    object QTarefaTARDESCRICAO: TStringField
      FieldName = 'TARDESCRICAO'
      Size = 250
    end
    object QTarefaTAREDICAO: TIntegerField
      FieldName = 'TAREDICAO'
    end
    object QTarefaTARPONTOS: TIntegerField
      FieldName = 'TARPONTOS'
    end
    object QTarefaTARPARTICIPANTE: TIntegerField
      FieldName = 'TARPARTICIPANTE'
    end
    object QTarefaTARARQUIVO: TStringField
      FieldName = 'TARARQUIVO'
      Size = 250
    end
    object QTarefaTARPREVISAO: TStringField
      FieldName = 'TARPREVISAO'
      Size = 1
    end
    object QTarefaTARGRUPO: TIntegerField
      FieldName = 'TARGRUPO'
    end
    object QTarefaTARPONTOS1: TIntegerField
      FieldName = 'TARPONTOS1'
    end
    object QTarefaTARNUMERO: TIntegerField
      FieldName = 'TARNUMERO'
    end
    object QTarefaTARDATAHORACADASTRO: TSQLTimeStampField
      FieldName = 'TARDATAHORACADASTRO'
    end
    object QTarefaTARDATAHORAENTREGA: TSQLTimeStampField
      FieldName = 'TARDATAHORAENTREGA'
    end
    object QTarefaTARDATAHORAENTREGUE: TSQLTimeStampField
      FieldName = 'TARDATAHORAENTREGUE'
    end
  end
  object DSPTarefa: TDataSetProvider
    DataSet = QTarefa
    BeforeUpdateRecord = DSPTarefaBeforeUpdateRecord
    Left = 104
    Top = 314
  end
  object DSPArqs: TDataSetProvider
    DataSet = QArqs
    Left = 104
    Top = 370
  end
  object QArqs: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'SELECT * FROM TTAREFA'#13#10'WHERE TARDATAHORAENTREGUE IS NULL AND TAR' +
      'DATAHORAENTREGA > CURRENT_TIME'#13#10'ORDER BY TARDATAHORAENTREGA'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConn
    Left = 24
    Top = 370
    object IntegerField1: TIntegerField
      FieldName = 'TARCODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'TARNOME'
      Size = 100
    end
    object StringField2: TStringField
      FieldName = 'TARDESCRICAO'
      Size = 250
    end
    object IntegerField2: TIntegerField
      FieldName = 'TAREDICAO'
    end
    object IntegerField3: TIntegerField
      FieldName = 'TARPONTOS'
    end
    object IntegerField4: TIntegerField
      FieldName = 'TARPARTICIPANTE'
    end
    object StringField4: TStringField
      FieldName = 'TARARQUIVO'
      Size = 250
    end
    object StringField5: TStringField
      FieldName = 'TARPREVISAO'
      Size = 1
    end
    object IntegerField5: TIntegerField
      FieldName = 'TARGRUPO'
    end
    object QArqsTARPONTOS1: TIntegerField
      FieldName = 'TARPONTOS1'
    end
    object QArqsTARNUMERO: TIntegerField
      FieldName = 'TARNUMERO'
    end
    object QArqsTARDATAHORACADASTRO: TSQLTimeStampField
      FieldName = 'TARDATAHORACADASTRO'
    end
    object QArqsTARDATAHORAENTREGA: TSQLTimeStampField
      FieldName = 'TARDATAHORAENTREGA'
    end
    object QArqsTARDATAHORAENTREGUE: TSQLTimeStampField
      FieldName = 'TARDATAHORAENTREGUE'
    end
  end
  object DSPEntregues: TDataSetProvider
    DataSet = QEntregues
    Left = 104
    Top = 426
  end
  object QEntregues: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'SELECT * FROM TTAREFA'#13#10'LEFT OUTER JOIN TGRUPO ON GRUCODIGO = TAR' +
      'GRUPO'#13#10'WHERE TARDATAHORAENTREGUE IS NOT NULL '#13#10'ORDER BY TARDATAH' +
      'ORAENTREGUE DESC'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConn
    Left = 24
    Top = 426
    object IntegerField6: TIntegerField
      FieldName = 'TARCODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField6: TStringField
      FieldName = 'TARNOME'
      Size = 100
    end
    object StringField7: TStringField
      FieldName = 'TARDESCRICAO'
      Size = 250
    end
    object IntegerField7: TIntegerField
      FieldName = 'TAREDICAO'
    end
    object IntegerField8: TIntegerField
      FieldName = 'TARPONTOS'
    end
    object IntegerField9: TIntegerField
      FieldName = 'TARPARTICIPANTE'
    end
    object StringField9: TStringField
      FieldName = 'TARARQUIVO'
      Size = 250
    end
    object StringField10: TStringField
      FieldName = 'TARPREVISAO'
      Size = 1
    end
    object IntegerField10: TIntegerField
      FieldName = 'TARGRUPO'
    end
    object QEntreguesGRUCODIGO: TIntegerField
      FieldName = 'GRUCODIGO'
    end
    object QEntreguesGRUNOM: TStringField
      FieldName = 'GRUNOM'
      Size = 50
    end
    object QEntreguesGRUCOR: TStringField
      FieldName = 'GRUCOR'
    end
    object QEntreguesGRUPESO: TFMTBCDField
      FieldName = 'GRUPESO'
      Precision = 15
      Size = 2
    end
    object QEntreguesGRURESPONSAVEL: TIntegerField
      FieldName = 'GRURESPONSAVEL'
    end
    object QEntreguesTARPONTOS1: TIntegerField
      FieldName = 'TARPONTOS1'
    end
    object QEntreguesTARNUMERO: TIntegerField
      FieldName = 'TARNUMERO'
    end
    object QEntreguesTARDATAHORACADASTRO: TSQLTimeStampField
      FieldName = 'TARDATAHORACADASTRO'
    end
    object QEntreguesTARDATAHORAENTREGA: TSQLTimeStampField
      FieldName = 'TARDATAHORAENTREGA'
    end
    object QEntreguesTARDATAHORAENTREGUE: TSQLTimeStampField
      FieldName = 'TARDATAHORAENTREGUE'
    end
  end
  object DSPAEntregar: TDataSetProvider
    DataSet = QAEntregar
    Left = 104
    Top = 482
  end
  object QAEntregar: TSQLDataSet
    SchemaName = 'sysdba'
    CommandText = 
      'SELECT * FROM TTAREFA'#13#10'LEFT OUTER JOIN TGRUPO ON GRUCODIGO = TAR' +
      'GRUPO'#13#10'WHERE TARDATAHORAENTREGUE IS NULL '#13#10'AND TARDATAHORAENTREG' +
      'A > CURRENT_TIME'#13#10'ORDER BY TARDATAHORAENTREGA'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConn
    Left = 24
    Top = 482
    object IntegerField11: TIntegerField
      FieldName = 'TARCODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField11: TStringField
      FieldName = 'TARNOME'
      Size = 100
    end
    object StringField12: TStringField
      FieldName = 'TARDESCRICAO'
      Size = 250
    end
    object IntegerField12: TIntegerField
      FieldName = 'TAREDICAO'
    end
    object IntegerField13: TIntegerField
      FieldName = 'TARPONTOS'
    end
    object IntegerField14: TIntegerField
      FieldName = 'TARPARTICIPANTE'
    end
    object StringField14: TStringField
      FieldName = 'TARARQUIVO'
      Size = 250
    end
    object StringField15: TStringField
      FieldName = 'TARPREVISAO'
      Size = 1
    end
    object IntegerField15: TIntegerField
      FieldName = 'TARGRUPO'
    end
    object QAEntregarGRUCODIGO: TIntegerField
      FieldName = 'GRUCODIGO'
    end
    object QAEntregarGRUNOM: TStringField
      FieldName = 'GRUNOM'
      Size = 50
    end
    object QAEntregarGRUCOR: TStringField
      FieldName = 'GRUCOR'
    end
    object QAEntregarGRUPESO: TFMTBCDField
      FieldName = 'GRUPESO'
      Precision = 15
      Size = 2
    end
    object QAEntregarGRURESPONSAVEL: TIntegerField
      FieldName = 'GRURESPONSAVEL'
    end
    object QAEntregarTARPONTOS1: TIntegerField
      FieldName = 'TARPONTOS1'
    end
    object QAEntregarTARNUMERO: TIntegerField
      FieldName = 'TARNUMERO'
    end
    object QAEntregarTARDATAHORACADASTRO: TSQLTimeStampField
      FieldName = 'TARDATAHORACADASTRO'
    end
    object QAEntregarTARDATAHORAENTREGA: TSQLTimeStampField
      FieldName = 'TARDATAHORAENTREGA'
    end
    object QAEntregarTARDATAHORAENTREGUE: TSQLTimeStampField
      FieldName = 'TARDATAHORAENTREGUE'
    end
  end
  object QConsulta: TSQLDataSet
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConn
    Left = 24
    Top = 536
  end
  object DSPConsulta: TDataSetProvider
    DataSet = QConsulta
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 104
    Top = 536
  end
end
