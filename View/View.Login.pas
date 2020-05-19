unit View.Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxImage, dxGDIPlusClasses, cxClasses, dxLayoutContainer, dxLayoutControl,
  dxLayoutcxEditAdapters, cxTextEdit, System.Actions, Vcl.ActnList, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons;

type
  Tview_Login = class(TForm)
    layoutControlLoginGroup_Root: TdxLayoutGroup;
    layoutControlLogin: TdxLayoutControl;
    textEditUsuario: TcxTextEdit;
    layoutItemUsuario: TdxLayoutItem;
    textEditSenha: TcxTextEdit;
    layoutItemSenha: TdxLayoutItem;
    actionListLogin: TActionList;
    actionLoginLogar: TAction;
    actionLoginCancelar: TAction;
    buttonLogar: TcxButton;
    dxLayoutItem1: TdxLayoutItem;
    buttonCancelar: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    procedure actionLoginCancelarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  view_Login: Tview_Login;

implementation

{$R *.dfm}

uses Data.Module;

procedure Tview_Login.actionLoginCancelarExecute(Sender: TObject);
begin
  ModalResult := mrCancel;
  view_Login.Close;
end;

end.
