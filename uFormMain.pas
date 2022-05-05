unit uFormMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.StdCtrls,
  System.ImageList, Vcl.ImgList;

type
  TFormMain = class(TForm)
    PnlTitulo: TPanel;
    PgCntrlPrincipal: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    EdtCaracteres: TEdit;
    BtnExibirDataHora: TButton;
    ImageList1: TImageList;
    procedure TabSheet1Show(Sender: TObject);
    procedure EdtCaracteresEnter(Sender: TObject);
    procedure EdtCaracteresExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}

procedure TFormMain.EdtCaracteresEnter(Sender: TObject);
begin
  EdtCaracteres.Color := $00E8E8E8;
end;

procedure TFormMain.EdtCaracteresExit(Sender: TObject);
begin
  if EdtCaracteres.Text = '' then
  begin
    MessageDlg('Você não digitou nenhum conteúdo', mtInformation, [mbOK], 0);
    EdtCaracteres.SetFocus;
  end
  else if Length(EdtCaracteres.Text) <> 4 then
  begin
    MessageDlg('Você não digitou 4 caracteres', mtError, [mbOK], 0);
    EdtCaracteres.SetFocus;
    EdtCaracteres.SelectAll;
  end
  else
    EdtCaracteres.Color := clWindow;
end;

procedure TFormMain.TabSheet1Show(Sender: TObject);
begin
  PnlTitulo.Caption := 'Mudando o caption do Panel com onShow';
  PnlTitulo.Color := $00808000;
  PnlTitulo.Font.Color := $003A7CFF;
end;

end.
