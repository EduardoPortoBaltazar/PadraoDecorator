program Decorator;

uses
  Vcl.Forms,
  PrincDecorator in 'PrincDecorator.pas' {Form1},
  Decorator.Model.NFCe in 'Model\Decorator.Model.NFCe.pas',
  Decorator.Model.SAT in 'Model\Decorator.Model.SAT.pas',
  Decorator.Model.Interfaces in 'Model\Decorator.Model.Interfaces.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
