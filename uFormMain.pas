unit uFormMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.StdCtrls,
  System.ImageList, Vcl.ImgList, uFormDataHora;

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
    Panel1: TPanel;
    Button1: TButton;
    RGListaOpcoes: TRadioGroup;
    Button2: TButton;
    Label2: TLabel;
    LstBxItensSelecionados: TListBox;
    Button3: TButton;
    Panel2: TPanel;
    Button4: TButton;
    Button5: TButton;
    MmObservacao: TMemo;
    Label3: TLabel;
    Button6: TButton;
    Button7: TButton;
    Panel4: TPanel;
    Button8: TButton;
    procedure TabSheet1Show(Sender: TObject);
    procedure EdtCaracteresEnter(Sender: TObject);
    procedure EdtCaracteresExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure BtnExibirDataHoraClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}

procedure TFormMain.BtnExibirDataHoraClick(Sender: TObject);
begin
 FrmDataHora.ShowModal;
end;

procedure TFormMain.Button1Click(Sender: TObject);
begin
  PgCntrlPrincipal.ActivePageIndex := 1;

end;

procedure TFormMain.Button2Click(Sender: TObject);
begin
  if RGListaOpcoes.ItemIndex >= 0 then
  begin
    LstBxItensSelecionados.Items.Add
      (RGListaOpcoes.Items[RGListaOpcoes.ItemIndex]);
    RGListaOpcoes.ItemIndex := -1;
  end
  else
    MessageDlg('Você não selecionou' + 'nenhum item', mtError, [mbOK], 0);
end;

procedure TFormMain.Button3Click(Sender: TObject);
begin
  LstBxItensSelecionados.Items.Clear;
end;

procedure TFormMain.Button4Click(Sender: TObject);
begin
  PgCntrlPrincipal.ActivePageIndex := 0;
end;

procedure TFormMain.Button5Click(Sender: TObject);
begin
  PgCntrlPrincipal.ActivePageIndex := 2;
end;

procedure TFormMain.Button6Click(Sender: TObject);
begin
 MmObservacao.SelectAll;
 MmObservacao.SetFocus;
end;

procedure TFormMain.Button7Click(Sender: TObject);
begin
  MmObservacao.Lines.Clear;
end;

procedure TFormMain.Button8Click(Sender: TObject);
begin
  PgCntrlPrincipal.ActivePageIndex := 1;
end;

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
