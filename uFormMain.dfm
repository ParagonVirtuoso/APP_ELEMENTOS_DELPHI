object FormMain: TFormMain
  Left = 0
  Top = 0
  Caption = 'Eventos e Componentes Visuais'
  ClientHeight = 348
  ClientWidth = 698
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clNavy
  Font.Height = -24
  Font.Name = 'Comic Sans MS'
  Font.Style = [fsBold]
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 35
  object PnlTitulo: TPanel
    Left = 0
    Top = 0
    Width = 698
    Height = 41
    Align = alTop
    Caption = 'Trabalhando com Eventos no Delphi'
    Color = clWindow
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = -32
    ExplicitTop = 128
    ExplicitWidth = 640
  end
  object PgCntrlPrincipal: TPageControl
    Left = 0
    Top = 41
    Width = 698
    Height = 307
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -19
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Aba 1'
      OnShow = TabSheet1Show
      object GroupBox1: TGroupBox
        Left = 3
        Top = 19
        Width = 265
        Height = 145
        Caption = 'Evento onExit do Edit'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -19
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label1: TLabel
          Left = 16
          Top = 49
          Width = 112
          Height = 17
          Caption = 'Digite 4 caracteres'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
        end
        object EdtCaracteres: TEdit
          Left = 16
          Top = 72
          Width = 154
          Height = 26
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TextHint = 'Digite 4 caracteres'
        end
      end
      object BtnExibirDataHora: TButton
        Left = 344
        Top = 68
        Width = 113
        Height = 49
        Caption = 'Exibir outro Form'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 1
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Aba 2'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -19
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ImageIndex = 1
      ParentFont = False
    end
    object TabSheet3: TTabSheet
      Caption = 'Aba 3'
      ImageIndex = 2
    end
  end
end
