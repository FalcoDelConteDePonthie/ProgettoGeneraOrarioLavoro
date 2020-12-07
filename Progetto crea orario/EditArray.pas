unit EditArray;

interface

uses
  System.Generics.Collections, {TArray}
  System.Generics.Defaults,
  Vcl.StdCtrls;

type
  { TAnimaliDelloZoo }
  TEditArray = class
  strict private
     FListaDiEditText : TObjectList<TEdit>;
  private
    class constructor ClassCreate;
    class destructor ClassDestroy;

    { Internal }
  protected

  public
    { Public declarations }
    constructor Create(numberOfEditTest: Integer);
    destructor Destroy; override;

  end;

implementation

{ TAnimaliDelloZoo }
class constructor TEditArray.ClassCreate;
begin
  //FInstance := TEditArray.Create;
end;

class destructor TEditArray.ClassDestroy;
begin
  //FInstance.Free;
end;

constructor TEditArray.Create(numberOfEditTest: Integer);
begin
  inherited Create;


end;

destructor TEditArray.Destroy();
begin

  inherited Destroy;
end;
end.
