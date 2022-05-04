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
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Aba 1'
    end
    object TabSheet2: TTabSheet
      Caption = 'Aba 2'
      ImageIndex = 1
    end
    object TabSheet3: TTabSheet
      Caption = 'Aba 3'
      ImageIndex = 2
    end
  end
end
