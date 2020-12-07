unit Unit1;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.DateUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  ColonnaLavori,
  System.Generics.Collections, {TArray}
  System.Generics.Defaults;

type
  TForm1 = class(TForm)
    Mesi: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Anno: TComboBox;
    NumeroUtenti: TComboBox;
    Panel1:  TPanel;
    Button1: TButton;

    procedure Button1Click(Sender: TObject);

  strict private
    { Private declarations }
    function  GetMonthByName(const AMese: String) : Integer;
    procedure GenerateOneColumnForOnlyDay(const ANumberOfPerson, ANumberOfDay: Integer);

  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
procedure TForm1.Button1Click(Sender: TObject);
var
  LNumberDayInMonth : Integer;
  LMonth : Integer;
begin
  if String.IsNullOrEmpty(NumeroUtenti.Text) or String.IsNullOrEmpty(Mesi.Text) or String.IsNullOrEmpty(Anno.Text)  then
  begin
     raise Exception.Create('Devi selezionare un valore per le tre combobox prima di poter generare l''orario');
  end;

  {Per prima cosa ho bisogno di sapere quanti giorno sono presenti nel mese per l'anno scelto}
  LMonth := GetMonthByName(Mesi.Text);

  LNumberDayInMonth := DaysInAMonth(strtoint(Anno.Text), LMonth);
  GenerateOneColumnForOnlyDay(strtoint(NumeroUtenti.Text), LNumberDayInMonth);
end;

{Restituisce il mese sotto forma di numero a parità di indice dell'array}
function TForm1.GetMonthByName(const AMese: String): Integer;
const
  LArrayNameOfMonth : Array [1..12] of String = ('Gennaio','Febbraio','Marzo','Aprile','Maggio','Giugno','Luglio','Agosto','Settembre','Ottobre','Novembre','Dicembre');
var
  LI : Integer;
begin
  result := 0;
  for LI := Length(LArrayNameOfMonth) downto 0 do
  begin
    if LArrayNameOfMonth[LI] = AMese then
    begin
       result := LI;
    end;
  end;
end;

{Genera una matrice con numberOfPerson righe e numberOfDay colonne}
procedure TForm1.GenerateOneColumnForOnlyDay(const ANumberOfPerson, ANumberOfDay: Integer);
var
  LColumns: TColonneDeiGiorni;
  begin
    try
      LColumns := TColonneDeiGiorni.Create(Self);
      LColumns.AddComponent(ANumberOfDay);
      LColumns.Parent := Panel1;
      LColumns.Align := TAlign.alTop;
      LColumns.Visible := True;
    finally
      //LModal.Free;
  end;
end;

end.
