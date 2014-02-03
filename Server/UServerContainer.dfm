object ServerContainer: TServerContainer
  OldCreateOrder = False
  Height = 271
  Width = 415
  object DSServer1: TDSServer
    AutoStart = True
    HideDSAdmin = False
    Left = 48
    Top = 19
  end
  object DSTCPServerTransport1: TDSTCPServerTransport
    Port = 212
    Server = DSServer1
    BufferKBSize = 32
    Filters = <>
    KeepAliveEnablement = kaDefault
    Left = 48
    Top = 81
  end
  object DSServerClass1: TDSServerClass
    OnGetClass = DSServerClass1GetClass
    Server = DSServer1
    LifeCycle = 'Session'
    Left = 152
    Top = 19
  end
end
