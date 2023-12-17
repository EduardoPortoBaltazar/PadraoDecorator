unit Decorator.Model.NFCe;

interface

uses
  system.Classes,
  Decorator.Model.Interfaces;

type
  TModelNFCe = class (TInterfacedObject, iModelVenda)
   private
     FDecorator: iModelVenda;
   public
    function Venda: iModelVenda;

    constructor Create(Decorator: iModelVenda);
    destructor Destroy; override;
    class function New(Decorator: iModelVenda): iModelVenda;
 end;

implementation

{ TModelNFCe }

constructor TModelNFCe.Create(Decorator: iModelVenda);
begin

end;

destructor TModelNFCe.Destroy;
begin

  inherited;
end;

class function TModelNFCe.New(Decorator: iModelVenda): iModelVenda;
begin
  Result := Self.Create(Decorator);
end;

function TModelNFCe.Venda: iModelVenda;
begin
  if Assigned(FDecorator) then
  FDecorator.Venda;

  Result := Self;
end;

end.

