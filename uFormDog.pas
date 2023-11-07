unit uFormDog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, uInterfaceAnimal, uImplement.Dog;

type
  TfrmDogInterface = class(TForm)
    panelDog: TPanel;
    btnAllMethods: TButton;
    btnName: TButton;
    btnAge: TButton;
    btnWalks: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnAllMethodsClick(Sender: TObject);
    procedure btnNameClick(Sender: TObject);
    procedure btnAgeClick(Sender: TObject);
    procedure btnWalksClick(Sender: TObject);
  private
    { Private declarations }
    FAnimal : IAnimal;
  public
    { Public declarations }
  end;

var
  frmDogInterface: TfrmDogInterface;

implementation

{$R *.dfm}

procedure TfrmDogInterface.btnAgeClick(Sender: TObject);
begin
  FAnimal.Age;
end;

procedure TfrmDogInterface.btnAllMethodsClick(Sender: TObject);
begin
  //calling all methods
  FAnimal
    .Name
    .Age
    .Walks;
end;

procedure TfrmDogInterface.btnNameClick(Sender: TObject);
begin
  FAnimal.Name;
end;

procedure TfrmDogInterface.btnWalksClick(Sender: TObject);
begin
  FAnimal.Walks;
end;

procedure TfrmDogInterface.FormCreate(Sender: TObject);
begin
  FAnimal := TDog.New;
end;

end.
