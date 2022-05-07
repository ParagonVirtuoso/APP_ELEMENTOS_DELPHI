unit uFormDataHora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage;

type
  TFrmDataHora = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    LblDataHora: TLabel;
    Label2: TLabel;
    Image1: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDataHora: TFrmDataHora;

implementation

{$R *.dfm}

end.
