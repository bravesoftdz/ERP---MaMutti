unit Model.Usuarios;

interface

uses Generics.Collections, FireDAC.Stan.Intf, FireDAC.Stan.Param, FireDAC.Phys.Intf, FireDAC.Comp.Client, System.AnsiStrings,
  DAO.Conexao, Common.ENum, System.SysUtils, VCL.Dialogs;

type
  TUsuarios = class
  private
    FAcao: TAcao;
    FEMail: String;
    FCodigo: Integer;
    FNivel: Integer;
    FNome: String;
    FUserName: String;
    FGrupo: Integer;
    FConexao: TConexao;
  public
    constructor Create;
    property Codigo: Integer read FCodigo write FCodigo;
    property Nome: String read FNome write FNome;
    property UserName: String read FUserName write FUserName;
    property EMail: String read FEMail write FEMail;
    property Grupo: Integer read FGrupo write FGrupo;
    property Nivel: Integer read FNivel write FNivel;
    property Acao: TAcao read FAcao write FAcao;
    function CreateUser(sPassword: string; iDaysExpire: integer): boolean;
  end;

implementation

uses Global.Parametros;

CONST
  TABLENAME = 'sistema_usuarios';

{ TUsuarios }

constructor TUsuarios.Create;
begin
  FConexao := TConexao.Create;
end;

function TUsuarios.CreateUser(sPassword: string; iDaysExpire: integer): boolean;
var
  sSQL, sServer: string;
  fdQuery: TFDQuery;
begin
  try
    sServer := '%';
    sSQL := 'create user ' + FUserName + '@' + sServer + ' identified with sha256_password by ' + sPassword +
    ' password expire interval ' + iDaysExpire.ToString + ' day;';
    fdQuery := FConexao.ReturnQuery;
    fdQuery.SQL.Text := sSQL;
    fdQuery.ExecSQL;
    sSQL := 'grant all privileges on * . * TO ' + FUsername + '@' + sServer + ';';
    fdQuery.SQL.Text := sSQL;
    fdQuery.ExecSQL;
    sSQL := 'flush privileges;';
    fdQuery.SQL.Text := sSQL;
    fdQuery.ExecSQL;
    fdQuery.Active := False;
    fdQuery.Connection.Connected := False;
    fdQuery.Free;
  except on e : Exception do
  begin
     ShowMessageFmt('Ocorreu o seguinte erro: %s', [e.Message]);
     if Assigned(fdQuery) then
       fdQuery.Free;
  end;
  end;
end;

end.
