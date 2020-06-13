unit Unit3;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Windows, ExtCtrls;

type

  { TForm3 }

  TForm3 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
  private

  public

  end;

var
  Form3: TForm3;

implementation

{$R *.lfm}

{ TForm3 }

procedure TForm3.Image2Click(Sender: TObject);
begin
 Close;
 ShellExecute(Handle, nil, 'https://modenov.ru/', nil, nil, SW_SHOW);
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
 Close;
 ShellExecute(Handle, nil, 'https://github.com/modenov', nil, nil, SW_SHOW);
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
 Close;
end;

end.

