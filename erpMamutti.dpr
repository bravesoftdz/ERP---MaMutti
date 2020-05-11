program erpMamutti;

uses
  Vcl.Forms,
  View.Main in 'View\View.Main.pas' {view_Main},
  Vcl.Themes,
  Vcl.Styles,
  Data.Module in 'Data\Data.Module.pas' {dm: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10');
  Application.Title := 'ERP - MaMutti';
  Application.CreateForm(Tview_Main, view_Main);
  Application.CreateForm(Tdm, dm);
  Application.Run;
end.
