object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 843
  ClientWidth = 1111
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 19
    Width = 84
    Height = 13
    Caption = 'Seleziona il mese:'
  end
  object Label2: TLabel
    Left = 252
    Top = 19
    Width = 137
    Height = 13
    Caption = 'Seleziona il numero di utenti:'
  end
  object Label3: TLabel
    Left = 509
    Top = 19
    Width = 29
    Height = 13
    Caption = 'Anno:'
  end
  object Mesi: TComboBox
    Left = 148
    Top = 16
    Width = 81
    Height = 21
    TabOrder = 0
    Items.Strings = (
      'Gennaio'
      'Febbraio'
      'Marzo'
      'Aprile'
      'Maggio'
      'Giungo'
      'Luglio'
      'Agosto'
      'Settembre'
      'Ottobre'
      'Novembre'
      'Dicembre')
  end
  object NumeroUtenti: TComboBox
    Left = 395
    Top = 16
    Width = 94
    Height = 21
    TabOrder = 1
    Items.Strings = (
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7'
      '8'
      '9'
      '10'
      '11'
      '12')
  end
  object Anno: TComboBox
    Left = 548
    Top = 16
    Width = 57
    Height = 21
    TabOrder = 2
    Items.Strings = (
      '2020'
      '2021'
      '2022'
      '2023'
      '2024'
      '2025'
      '2026'
      '2027'
      '2028'
      '2029'
      '2030'
      '2031'
      '2032'
      '2033'
      '2034'
      '2035'
      '2036'
      '2037'
      '2038'
      '2049'
      '2040'
      '2041'
      '2042'
      '2043'
      '2044'
      '2045'
      '2046'
      '2047'
      '2048'
      '2049'
      '2050'
      '2051'
      '2052'
      '2053'
      '2054'
      '2055'
      '2056'
      '2057'
      '2058'
      '2059'
      '2060')
  end
  object Button1: TButton
    Left = 620
    Top = 14
    Width = 75
    Height = 25
    Caption = 'Genera'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Panel1: TPanel
    Left = 52
    Top = 56
    Width = 1029
    Height = 573
    Caption = 'Panel1'
    TabOrder = 4
  end
end
