unit uLembrete;

interface

uses System.SysUtils;

type
  TLembrete = class
  private
    FIDPessoa: integer;
    FTitulo: string;
    FDescricao: string;
    FData: TDate;
    FHora: TTime;
    constructor Create;

    procedure setTitulo(Value: String);
    procedure setDescricao(Value: String);
    procedure setData(Value: TDate);
    procedure setHora(Value: TTime);
    procedure setIDLembrete(Value: integer);

    function getTitulo: string;
    function getDescricao: string;
    function getData: TDate;
    function getHora: TTime;
    function getIDLembrete: integer;

  public
    property IDLembrete: integer read getIDLembrete write setIDLembrete;
    property titulo: string read getTitulo write setTitulo;
    property descricao: string read getDescricao write setDescricao;
    property data: TDate read getData write setData;
    property hora: TTime read getHora write setHora;
  end;

implementation

{ TLembrete }

constructor TLembrete.Create;
begin
  FIDPessoa := 0;
  FTitulo := '';
  FDescricao := '';
  FData := EncodeDate(1900, 1, 1);
  FHora := EncodeTime(00, 00, 00, 00);
end;

function TLembrete.getData: TDate;
begin
  Result := FData;
end;

function TLembrete.getHora: TTime;
begin
  Result := FHora;
end;

function TLembrete.getDescricao: string;
begin
  Result := FDescricao;
end;

function TLembrete.getIDLembrete: integer;
begin
  Result := FIDPessoa;
end;

function TLembrete.getTitulo: string;
begin
  Result := FTitulo;
end;

procedure TLembrete.setData(Value: TDate);
begin
  FData := Value;
end;

procedure TLembrete.setHora(Value: TTime);
begin
  FHora := Value;
end;

procedure TLembrete.setDescricao(Value: String);
begin
  FDescricao := Value;
end;

procedure TLembrete.setIDLembrete(Value: integer);
begin
  FIDPessoa := Value;
end;

procedure TLembrete.setTitulo(Value: String);
begin
  FTitulo := Value;
end;

end.