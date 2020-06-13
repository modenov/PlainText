unit Unit4;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, SynEdit, SynCompletion, SynHighlighterAny, Forms,
  Controls, Graphics, Dialogs, ComCtrls, StdCtrls;

type

  { TForm4 }

  TForm4 = class(TForm)
    Edit1: TEdit;
    ImageList1: TImageList;
    SynAutoComplete1: TSynAutoComplete;
    SynEdit1: TSynEdit;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  Form4: TForm4;

implementation

{$R *.lfm}

{ TForm4 }

procedure TForm4.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  try
  synedit1.Lines.SaveToFile('autotext.txt');
  except
  Showmessage('Нам не удалось сохранить Ваш текст в записной книжке :(');
  end;
  end;

procedure TForm4.FormShow(Sender: TObject);
begin
  try
  synedit1.Lines.LoadFromFile('autotext.txt');
  except
  Showmessage('Нам не удалось загрузить Ваш текст из записной книжки :(');
  end;
end;

end.

