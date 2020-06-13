unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ComCtrls;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label2: TLabel;
    Memo2: TMemo;
    StatusBar1: TStatusBar;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  Form2: TForm2;

implementation

{$R *.lfm}

{ TForm2 }

procedure TForm2.Button2Click(Sender: TObject);
begin
  form2.Close;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
Memo2.SelectAll;
Memo2.Clear;
Memo2.PasteFromClipboard;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  memo2.SelectAll;
  memo2.CopyToClipboard;
  Form2.Close;
end;

end.

