object view_Login: Tview_Login
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Login'
  ClientHeight = 181
  ClientWidth = 424
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  PixelsPerInch = 96
  TextHeight = 13
  object layoutControlLogin: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 424
    Height = 181
    Align = alClient
    TabOrder = 0
    object textEditUsuario: TcxTextEdit
      Left = 40
      Top = 38
      Properties.CharCase = ecLowerCase
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 344
    end
    object textEditSenha: TcxTextEdit
      Left = 40
      Top = 103
      Properties.EchoMode = eemPassword
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 344
    end
    object buttonLogar: TcxButton
      Left = 40
      Top = 146
      Width = 81
      Height = 25
      Cursor = crHandPoint
      Action = actionLoginLogar
      TabOrder = 2
    end
    object buttonCancelar: TcxButton
      Left = 304
      Top = 146
      Width = 80
      Height = 25
      Cursor = crHandPoint
      Action = actionLoginCancelar
      Cancel = True
      TabOrder = 3
    end
    object layoutControlLoginGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 2
      ShowBorder = False
      Index = -1
    end
    object layoutItemUsuario: TdxLayoutItem
      Parent = layoutControlLoginGroup_Root
      CaptionOptions.Text = 'Usu'#225'rio'
      CaptionOptions.Layout = clTop
      Padding.Bottom = 10
      Padding.Left = 30
      Padding.Right = 30
      Padding.Top = 10
      Padding.AssignedValues = [lpavBottom, lpavLeft, lpavRight, lpavTop]
      Control = textEditUsuario
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object layoutItemSenha: TdxLayoutItem
      Parent = layoutControlLoginGroup_Root
      CaptionOptions.Text = 'Senha'
      CaptionOptions.Layout = clTop
      Padding.Bottom = 10
      Padding.Left = 30
      Padding.Right = 30
      Padding.Top = 10
      Padding.AssignedValues = [lpavBottom, lpavLeft, lpavRight, lpavTop]
      Control = textEditSenha
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Padding.Left = 30
      Padding.AssignedValues = [lpavLeft]
      Control = buttonLogar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 81
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Padding.Right = 30
      Padding.AssignedValues = [lpavRight]
      Control = buttonCancelar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = layoutControlLoginGroup_Root
      AlignVert = avBottom
      LayoutDirection = ldHorizontal
      Index = 2
      AutoCreated = True
    end
  end
  object actionListLogin: TActionList
    Images = dm.imageList16_16
    Left = 384
    Top = 8
    object actionLoginLogar: TAction
      Category = 'Login'
      Caption = 'Logar'
      Hint = 'Logar no sistema'
      ImageIndex = 0
    end
    object actionLoginCancelar: TAction
      Category = 'Login'
      Caption = 'Cancelar'
      Hint = 'Cancelar login'
      ImageIndex = 1
      OnExecute = actionLoginCancelarExecute
    end
  end
end
