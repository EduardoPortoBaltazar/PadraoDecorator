unit Decorator.Model.SAT;

interface

uses
  system.Classes,
  Decorator.Model.Interfaces;

type
  TModelSat = class (TInterfacedObject, iModelVenda)
   private
     FDecorator: iModelVenda;
   public
    function Venda: iModelVenda;

    constructor Create(Decorator: iModelVenda);
    destructor Destroy; override;
    class function New(Decorator: iModelVenda): iModelVenda;
 end;

implementation

{ TModelSat }

constructor TModelSat.Create(Decorator: iModelVenda);
begin

end;

destructor TModelSat.Destroy;
begin

  inherited;
end;

class function TModelSat.New(Decorator: iModelVenda): iModelVenda;
begin
  Result := Self.Create(Decorator);
end;

function TModelSat.Venda: iModelVenda;
begin
  if Assigned(FDecorator) then
  FDecorator.Venda;

  Result := Self;
end;

end.
