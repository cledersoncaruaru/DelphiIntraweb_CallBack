inherited FrmDashBoard: TFrmDashBoard
  DesignLeft = 2
  DesignTop = 2
  inherited BTN_POST: TIWButton
    Left = 208
    Top = 312
    ExplicitLeft = 208
    ExplicitTop = 312
  end
  inherited BTN_CANCEL: TIWButton
    Left = 352
    Top = 312
    ExplicitLeft = 352
    ExplicitTop = 312
  end
  object VENDAS: TIWLabel [2]
    AlignWithMargins = False
    Left = 120
    Top = 120
    Width = 53
    Height = 17
    HasTabOrder = False
    FriendlyName = 'VENDAS'
    Caption = 'VENDAS'
  end
  inherited TPS: TIWTemplateProcessorHTML
    OnUnknownTag = TPSUnknownTag
  end
end
