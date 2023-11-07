unit uImplement.Dog;

interface

uses
  System.Classes,
  System.SysUtils,
  uInterfaceAnimal;

type

  TDog = class (TInterfacedObject, IAnimal)

  private
    constructor Create;
  public
    destructor Destroy; override;

    class Function New : IAnimal;

    Function Name : IAnimal;
    Function Age : IAnimal;
    Function Walks : IAnimal;

  end;

implementation

uses
  VCL.Dialogs;

{TDog}

constructor TDog.Create;
begin

end;

destructor TDog.Destroy;
begin
  inherited;
end;

class Function TDog.New: IAnimal;
begin
  Result := self.Create;
end;

function TDog.Name: IAnimal;
begin
  Result := self;
  ShowMessage('Name: Sponge Bob');
end;

function TDog.Walks: IAnimal;
begin
  Result := self;
  ShowMessage('Yes. He has 4 paws');
end;

function TDog.Age: IAnimal;
begin
  Result := self;
  ShowMessage('Age: 8');
end;

end.
