object AboutBox: TAboutBox
  Left = 200
  Top = 108
  BorderStyle = bsDialog
  Caption = 'About'
  ClientHeight = 215
  ClientWidth = 300
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 281
    Height = 161
    BevelInner = bvRaised
    BevelOuter = bvLowered
    ParentColor = True
    TabOrder = 0
    object ProgramIcon: TImage
      Left = 8
      Top = 8
      Width = 65
      Height = 57
      Stretch = True
      IsControl = True
    end
    object ProductName: TLabel
      Left = 79
      Top = 8
      Width = 198
      Height = 13
      Caption = #1055#1088#1086#1075#1088#1072#1084#1084#1072' '#1076#1083#1103' '#1096#1080#1092#1088#1086#1074#1072#1085#1080#1103' "CeZerro"'
      IsControl = True
    end
    object Version: TLabel
      Left = 79
      Top = 27
      Width = 76
      Height = 13
      Caption = #1042#1077#1088#1089#1080#1103' - 3.2.14'
      IsControl = True
    end
    object Copyright: TLabel
      Left = 8
      Top = 138
      Width = 130
      Height = 13
      Caption = #1059#1044#1054' "'#1044#1086#1085#1056#1044#1044#1070#1058'", 2018'
      IsControl = True
    end
    object Comments: TLabel
      Left = 8
      Top = 71
      Width = 137
      Height = 26
      Caption = #1055#1086#1076#1076#1077#1088#1078#1080#1074#1072#1077#1084#1099#1077' '#1096#1080#1092#1088#1099': '#1062#1077#1079#1072#1088#1100', '#1040#1090#1073#1072#1096', '#1052#1086#1088#1079#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      WordWrap = True
      IsControl = True
    end
    object Author: TLabel
      Left = 79
      Top = 46
      Width = 123
      Height = 13
      Caption = #1040#1074#1090#1086#1088' - '#1052#1085#1091#1089#1082#1080#1085' '#1050#1080#1088#1080#1083#1083
    end
  end
  object OKButton: TButton
    Left = 111
    Top = 180
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 1
    OnClick = OKButtonClick
  end
end
