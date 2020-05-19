program erpMamutti;

uses
  Vcl.Forms,
  View.Main in 'View\View.Main.pas' {view_Main},
  Vcl.Themes,
  Vcl.Styles,
  Data.Module in 'Data\Data.Module.pas' {dm: TDataModule},
  View.Login in 'View\View.Login.pas' {view_Login},
  Model.Usuarios in 'Model\Model.Usuarios.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10');
  Application.Title := 'ERP - MaMutti';
  Application.CreateForm(Tview_Main, view_Main);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(Tview_Login, view_Login);
  Application.Run;
end.
