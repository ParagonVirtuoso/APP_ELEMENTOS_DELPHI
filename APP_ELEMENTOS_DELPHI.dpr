program APP_ELEMENTOS_DELPHI;

uses
  Vcl.Forms,
  uFormMain in 'uFormMain.pas' {FormMain},
  uFormDataHora in 'uFormDataHora.pas' {FrmDataHora};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFrmDataHora, FrmDataHora);
  Application.Run;
end.
