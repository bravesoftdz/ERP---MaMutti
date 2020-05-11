unit View.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.WinXPanels, Vcl.WinXCtrls, Vcl.CategoryButtons, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinsDefaultPainters, Vcl.StdCtrls, cxButtons, Vcl.ToolWin,
  Vcl.ActnMan, Vcl.ActnCtrls, System.Actions, Vcl.ActnList, Vcl.ButtonGroup, Vcl.Buttons, System.ImageList, Vcl.ImgList, cxImageList;

type
  Tview_Main = class(TForm)
    actionListMain: TActionList;
    actionMenu: TAction;
    splitViewMain: TSplitView;
    actionCadastro: TAction;
    popupMenuCadastrado: TPopupMenu;
    actionCadastroEmpresas: TAction;
    menuCadastroEmpresas: TMenuItem;
    buttonMenu: TcxButton;
    buttonCadastro: TcxButton;
    buttonExpressas: TcxButton;
    actionExpressas: TAction;
    popupMenuExpressas: TPopupMenu;
    dctionImportacaoPedidos: TAction;
    actionImportacaoBaixas: TAction;
    menuExpressasImportaodePedidos: TMenuItem;
    menuExpressasImportaodeBaixas: TMenuItem;
    buttonPeriodico: TcxButton;
    actionPeriodicos: TAction;
    actionServicos: TAction;
    actionTransporte: TAction;
    actionFinanceiro: TAction;
    actionSistema: TAction;
    actionSair: TAction;
    buttonServicos: TcxButton;
    buttonTransportes: TcxButton;
    buttonFinanceiro: TcxButton;
    buttonSistema: TcxButton;
    buttonSair: TcxButton;
    imageListMain32_32: TcxImageList;
    actionCadastroClientes: TAction;
    actionCadastroFornecedores: TAction;
    actionCadastroContratados: TAction;
    actionCadastroCandidatos: TAction;
    actionCadastroFuncionarios: TAction;
    actionCadastroEmbarcadores: TAction;
    actionCadastroBases: TAction;
    actionCadastroEntregadores: TAction;
    actionCadastroVeiculos: TAction;
    menuCadastroClientes: TMenuItem;
    menuCadastroFornecedores: TMenuItem;
    menuCadastroContratados: TMenuItem;
    menuCadastroCandidatos: TMenuItem;
    menuCadastroFuncionrios: TMenuItem;
    menuCadastroEmbarcadores: TMenuItem;
    menuCadastroBases: TMenuItem;
    menuCadastroEntregadores: TMenuItem;
    menuCadastroVeiculos: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    actionExpressasBIPedidos: TAction;
    actionExpressasAcareacoes: TAction;
    actionExpressasExtravios: TAction;
    actionExpressasRecepcaoPedidos: TAction;
    actionExpressasControleExpressas: TAction;
    actionExpressasExpedicao: TAction;
    actionExpressasRoteiros: TAction;
    actionExpressasExtratos: TAction;
    actionExpressasVerbas: TAction;
    menuExpressasBIdePedidos: TMenuItem;
    menuExpressasAcareaes: TMenuItem;
    menuExpressasExtravios: TMenuItem;
    menuExpressasRecepodePedidos: TMenuItem;
    N4: TMenuItem;
    menuExpressasControledeExpressas: TMenuItem;
    menuExpressasExpedicao: TMenuItem;
    menuExpressasRoteiros: TMenuItem;
    menuExpressasExtratos: TMenuItem;
    menuExpressasVerbas: TMenuItem;
    N5: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure actionMenuExecute(Sender: TObject);
    procedure actionCadastroExecute(Sender: TObject);
    procedure actionExpressasExecute(Sender: TObject);
    procedure actionSairExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    procedure ResizeMainForm;
    procedure OpenCloseMenu;
  public
    { Public declarations }
  end;

var
  view_Main: Tview_Main;

implementation

{$R *.dfm}

uses Data.Module;

{ Tview_Main }

procedure Tview_Main.actionCadastroExecute(Sender: TObject);
begin
  popupMenuCadastrado.Popup(splitViewMain.Width, buttonMenu.Height * 2);
end;

procedure Tview_Main.actionExpressasExecute(Sender: TObject);
begin
  popupMenuExpressas.Popup(splitViewMain.Width, buttonMenu.Height * 3);
end;

procedure Tview_Main.actionMenuExecute(Sender: TObject);
begin
  OpenCloseMenu;
end;

procedure Tview_Main.actionSairExecute(Sender: TObject);
begin
  Close;
end;

procedure Tview_Main.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  view_Main := nil;
end;

procedure Tview_Main.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := Application.MessageBox('Confirma sair do sistema ?', 'Sair do sistema', MB_YESNO + MB_ICONQUESTION) = IDYES;
end;

procedure Tview_Main.FormShow(Sender: TObject);
begin
  ResizeMainForm;
end;

procedure Tview_Main.OpenCloseMenu;
begin
  if splitViewMain.Opened then
  begin
    splitViewMain.Close;
  end
  else
  begin
    splitViewMain.Open;
  end;
end;

procedure Tview_Main.ResizeMainForm;
begin
  Self.Top := Screen.WorkAreaTop;
  Self.Left := Screen.WorkAreaLeft;
  Self.Width := Screen.WorkAreaWidth;
  Self.Height := Screen.WorkAreaHeight;
  Self.Caption := Application.Title;
end;

end.
