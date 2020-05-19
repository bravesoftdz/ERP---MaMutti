unit Model.Usuarios;

interface

type
  TUsuarios = class
  private
    FCodigo: Integer;
    FNome: String;
    FUserName: String;
    FEMail: String;

  var
    FSenha: String;
    FProperty1: Integer;
    procedure SetCodigo(val: Integer);
    procedure SetNome(val: String);
    procedure SetUserName(val: String);
    procedure SetEMail(val: String);
    procedure SetSenha(val: String);
    procedure SetProperty1(val: Integer);
  public
    property Codigo: Integer read FCodigo write SetCodigo;
    property Nome: String read FNome write SetNome;
    property UserName: String read FUserName write SetUserName;
    property EMail: String read FEMail write SetEMail;
    property Senha: String read FSenha write SetSenha;
    property Property1: Integer read FProperty1 write SetProperty1;
  end;

implementation

procedure TUsuarios.SetCodigo(val: Integer);
begin
end;

procedure TUsuarios.SetNome(val: String);
begin
end;

procedure TUsuarios.SetUserName(val: String);
begin
end;

procedure TUsuarios.SetEMail(val: String);
begin
end;

procedure TUsuarios.SetSenha(val: String);
begin
end;

procedure TUsuarios.SetProperty1(val: Integer);
begin
end;

end.
