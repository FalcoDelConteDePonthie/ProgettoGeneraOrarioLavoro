unit ColonnaLavori;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  System.Generics.Collections, {TArray}
  System.Generics.Defaults, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Datasnap.DBClient, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
{TColonneDeiGiorni}
  TColonneDeiGiorni = class(TFrame)
    TabellaOrari: TFDMemTable;
    TabellaOrariGiorni: TIntegerField;
    TabellaOrariDipendenti: TStringField;
  strict private
    { Private declarations }
    FListaDiEditText: TObjectList<TLabel>;
  public
    { Internal declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure AddComponent(ANumberOfRows: Integer);
    property ListaEditText: TObjectList<TLabel> read FListaDiEditText;
  end;

implementation

{$R *.dfm}

{TColonneDeiGiorni}

constructor TColonneDeiGiorni.Create(AOwner: TComponent);
begin
   inherited Create(AOwner);
   FListaDiEditText := TObjectList<TLabel>.Create(true);
end;

destructor TColonneDeiGiorni.Destroy;
begin
  FListaDiEditText.Free;
  inherited Destroy;
end;

procedure TColonneDeiGiorni.AddComponent(ANumberOfRows: Integer);
var
  LI : Integer;
begin
   for LI := 0 to ANumberOfRows-1 do
   begin
     FListaDiEditText.Add(TLabel.Create(Self));
     FListaDiEditText[LI].Caption := IntToStr(LI+1) + ' ';
     FListaDiEditText[LI].Parent := Self;
     FListaDiEditText[LI].Visible := true;
     FListaDiEditText[LI].Align := TAlign.alLeft;
   end;
end;

end.
