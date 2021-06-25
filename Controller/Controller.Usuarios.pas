unit Controller.Usuarios;

interface

uses System.SysUtils, FireDAC.Comp.Client, Common.ENum, Model.Usuarios;

type
  TUsuariosController = class
  private

    FUsuarios : TUsuarios;

  public

    property  Usuarios  : TUsuarios read FUsuarios write FUsuarios;

    constructor Create;
    destructor  Destroy; override;

    function  CreateUser(sPassword: string; iDaysExpire: integer): boolean;
    function  Privilages(sPrivileges: string): boolean;
    function  Gravar(): boolean;
    function  Search(aParam : array of variant): boolean;
    function  GetField(sField : String; sKey : String; sKeyValue : String) : String;
    procedure SetupSelf(fdQuery : TFDQuery);
    procedure ClearSelf();

  end;

implementation

{ TUsuariosController }

procedure TUsuariosController.ClearSelf;
begin
  FUsuarios.ClearSelf;
end;

constructor TUsuariosController.Create;
begin
  FUsuarios := TUsuarios.Create;
end;

function TUsuariosController.CreateUser(sPassword: string; iDaysExpire: integer): boolean;
begin
  Result := FUsuarios.CreateUser(sPassword, iDaysExpire);
end;

destructor TUsuariosController.Destroy;
begin
  FUsuarios.Free;
  inherited;
end;

function TUsuariosController.GetField(sField, sKey, sKeyValue: String): String;
begin
  Result := FUsuarios.GetField(sField, sKey, sKeyValue);
end;

function TUsuariosController.Gravar: boolean;
begin
  Result := FUsuarios.Gravar();
end;

function TUsuariosController.Privilages(sPrivileges: string): boolean;
begin
  Result := FUsuarios.Privilages(sPrivileges);
end;

function TUsuariosController.Search(aParam: array of variant): boolean;
begin
  Result := FUsuarios.Search(aParam);
end;

procedure TUsuariosController.SetupSelf(fdQuery: TFDQuery);
begin
  FUsuarios.SetupSelf(fdQuery);
end;

end.
