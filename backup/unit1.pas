unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Menus, Unit2, Unit3, Unit4, ExtCtrls, Windows, ComCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Label1: TLabel;
    Label2: TLabel;
    MainMenu1: TMainMenu;
    Memo1: TMemo;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem18: TMenuItem;
    MenuItem19: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem20: TMenuItem;
    MenuItem21: TMenuItem;
    MenuItem22: TMenuItem;
    MenuItem23: TMenuItem;
    MenuItem24: TMenuItem;
    MenuItem25: TMenuItem;
    MenuItem26: TMenuItem;
    MenuItem27: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem33: TMenuItem;
    MenuItem34: TMenuItem;
    MenuItem52: TMenuItem;
    MenuItem53: TMenuItem;
    MenuItem54: TMenuItem;
    MenuItem55: TMenuItem;
    MenuItem56: TMenuItem;
    MenuItem57: TMenuItem;
    MenuItem60: TMenuItem;
    Timebottom: TTimer;
    timeronmini: TMenuItem;
    timeroffmini: TMenuItem;
    MenuItem38: TMenuItem;
    MenuItem39: TMenuItem;
    Timeron: TMenuItem;
    MenuItem35: TMenuItem;
    timer1s: TMenuItem;
    timer2s: TMenuItem;
    timer3s: TMenuItem;
    timer5s: TMenuItem;
    MenuItem4: TMenuItem;
    timer7s: TMenuItem;
    timer10s: TMenuItem;
    timeroff: TMenuItem;
    MenuItem43: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    PopupMenu1: TPopupMenu;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    TrayIcon1: TTrayIcon;
    procedure FormWindowStateChange(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure MenuItem18Click(Sender: TObject);
    procedure MenuItem19Click(Sender: TObject);
    procedure MenuItem20Click(Sender: TObject);
    procedure MenuItem21Click(Sender: TObject);
    procedure MenuItem22Click(Sender: TObject);
    procedure MenuItem24Click(Sender: TObject);
    procedure MenuItem25Click(Sender: TObject);
    procedure MenuItem26Click(Sender: TObject);
    procedure MenuItem27Click(Sender: TObject);
    procedure MenuItem53Click(Sender: TObject);
    procedure MenuItem55Click(Sender: TObject);
    procedure MenuItem57Click(Sender: TObject);
    procedure TimebottomTimer(Sender: TObject);
    procedure timeroffClick(Sender: TObject);
    procedure TimeronClick(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
    procedure timer10sClick(Sender: TObject);
    procedure timer1sClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure timer2sClick(Sender: TObject);
    procedure timer3sClick(Sender: TObject);
    procedure timer5sClick(Sender: TObject);
    procedure timer7sClick(Sender: TObject);
    procedure TrayIcon1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

mas:array[0..9] of string =
      ('0', '1', '2', '3', '4', '5', '6', '7', '8', '9');

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.MenuItem3Click(Sender: TObject);
begin
  Memo1.SelectAll;
  memo1.Clear;
  memo1.PasteFromClipboard;
  memo1.SelectAll;
  memo1.CutToClipboard;
end;

procedure TForm1.MenuItem5Click(Sender: TObject);
begin
 form2.Showmodal;
end;

procedure TForm1.FormWindowStateChange(Sender: TObject);
 begin
   if Form1.WindowState = wsMinimized then
   begin
      form1.WindowState := wsNormal;
      form1.Hide;
      Form1.ShowInTaskBar := stNever;
 end;
end;

procedure TForm1.Image2Click(Sender: TObject);
begin
  ShellExecute(Handle, nil, 'https://modenov.ru/', nil, nil, SW_SHOW);
end;

procedure TForm1.MenuItem18Click(Sender: TObject);
begin
  ShellExecute(Handle, nil, 'http://charmap.ru/alt_table.htm', nil, nil, SW_SHOW);
end;

procedure TForm1.MenuItem19Click(Sender: TObject);
begin
  ShellExecute(Handle, nil, 'http://charmap.ru/html_table.htm', nil, nil, SW_SHOW);
end;

procedure TForm1.MenuItem20Click(Sender: TObject);
begin
    ShellExecute(Handle, nil, 'http://charmap.ru/color_table.htm', nil, nil, SW_SHOW);
end;

procedure TForm1.MenuItem21Click(Sender: TObject);
begin
    ShellExecute(Handle, nil, 'http://charmap.ru/keyboard.html', nil, nil, SW_SHOW);
end;

procedure TForm1.MenuItem22Click(Sender: TObject);
begin
ShellExecute(Handle, nil, 'https://github.com/modenov', nil, nil, SW_SHOW);
end;

procedure TForm1.MenuItem24Click(Sender: TObject);
begin
  ShellExecute(Handle, nil, 'https://vk.com/vmodenov', nil, nil, SW_SHOW);
end;

procedure TForm1.MenuItem25Click(Sender: TObject);
begin
  ShellExecute(Handle, nil, 'https://vmodenov.ru/', nil, nil, SW_SHOW);
end;

procedure TForm1.MenuItem26Click(Sender: TObject);
begin
  ShellExecute(Handle, nil, 'https://losttapes.ru/', nil, nil, SW_SHOW);
end;

procedure TForm1.MenuItem27Click(Sender: TObject);
begin
  ShellExecute(Handle, nil, 'https://github.com/modenov', nil, nil, SW_SHOW);
end;

procedure TForm1.MenuItem53Click(Sender: TObject);
begin
  form4.show;
end;

procedure TForm1.MenuItem55Click(Sender: TObject);
begin
  Memo1.SelectAll;
  memo1.Clear;
  Memo1.SelText := mas[random(9)];
  Memo1.SelText := mas[random(9)];
  Memo1.SelText := mas[random(9)];
  Memo1.SelText := mas[random(9)];
  memo1.SelectAll;
  memo1.CutToClipboard;
end;

procedure TForm1.MenuItem57Click(Sender: TObject);
begin
  ShellExecute(Handle, nil, 'https://t.me/vovusique', nil, nil, SW_SHOW);
end;

procedure TForm1.TimebottomTimer(Sender: TObject);
begin
  StatusBar1.SimpleText:=' Привет! Рад тебя видеть:) Сегодня: '+FormatDateTime('dddd, dd.mm.yyyy г., время: '+TimeToStr(Time), Date);
end;

procedure TForm1.timeroffClick(Sender: TObject);
begin
  timer1.Enabled:=false;
  timeroff.Enabled:=false;
  timeroffmini.Enabled:=false;
  timer1s.Enabled:=false;
  timer2s.Enabled:=false;
  timer3s.Enabled:=false;
  timer5s.Enabled:=false;
  timer7s.Enabled:=false;
  timer10s.Enabled:=false;
  Timeron.Enabled:=true;
  timeronmini.Enabled:=true;
  Form1.Caption:='PlainText';
end;

procedure TForm1.TimeronClick(Sender: TObject);
begin
  timer1.Enabled:=true;
  timeroff.Enabled:=true;
  timeroffmini.Enabled:=true;
  timer1s.Enabled:=true;
  timer2s.Enabled:=true;
  timer3s.Enabled:=true;
  timer5s.Enabled:=true;
  timer7s.Enabled:=true;
  timer10s.Enabled:=true;
  Timeron.Enabled:=false;
  timeronmini.Enabled:=false;
  Form1.Caption:='PlainText — Активирован таймер';
end;

procedure TForm1.MenuItem7Click(Sender: TObject);
begin
  Form1.Hide;
  Form1.ShowInTaskBar := stNever;
end;

procedure TForm1.MenuItem8Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.MenuItem9Click(Sender: TObject);
begin
  form3.ShowModal;
end;

procedure TForm1.timer10sClick(Sender: TObject);
begin
  timer1.Interval:=10000;
  timer1s.Checked:=false;
  timer2s.Checked:=false;
  timer3s.Checked:=false;
  timer5s.Checked:=false;
  timer7s.Checked:=false;
  timer10s.Checked:=true;
  Form1.Caption:='PlainText — Активирован таймер, 10 сек.';
end;

procedure TForm1.timer1sClick(Sender: TObject);
begin
  timer1.Interval:=1000;
  timer1s.Checked:=true;
  timer2s.Checked:=false;
  timer3s.Checked:=false;
  timer5s.Checked:=false;
  timer7s.Checked:=false;
  timer10s.Checked:=false;
  Form1.Caption:='PlainText — Активирован таймер, 1 сек.';
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  Memo1.SelectAll;
  memo1.Clear;
  memo1.PasteFromClipboard;
  memo1.SelectAll;
  memo1.CutToClipboard;
end;

procedure TForm1.timer2sClick(Sender: TObject);
begin
  timer1.Interval:=2000;
  timer1s.Checked:=false;
  timer2s.Checked:=true;
  timer3s.Checked:=false;
  timer5s.Checked:=false;
  timer7s.Checked:=false;
  timer10s.Checked:=false;
  Form1.Caption:='PlainText — Активирован таймер, 2 сек.';
end;

procedure TForm1.timer3sClick(Sender: TObject);
begin
  timer1.Interval:=3000;
  timer1s.Checked:=false;
  timer2s.Checked:=false;
  timer3s.Checked:=true;
  timer5s.Checked:=false;
  timer7s.Checked:=false;
  timer10s.Checked:=false;
  Form1.Caption:='PlainText — Активирован таймер, 3 сек.';
end;

procedure TForm1.timer5sClick(Sender: TObject);
begin
  timer1.Interval:=5000;
  timer1s.Checked:=false;
  timer2s.Checked:=false;
  timer3s.Checked:=false;
  timer5s.Checked:=true;
  timer7s.Checked:=false;
  timer10s.Checked:=false;
  Form1.Caption:='PlainText — Активирован таймер, 5 сек.';
end;

procedure TForm1.timer7sClick(Sender: TObject);
begin
  timer1.Interval:=7000;
  timer1s.Checked:=false;
  timer2s.Checked:=false;
  timer3s.Checked:=false;
  timer5s.Checked:=false;
  timer7s.Checked:=true;
  timer10s.Checked:=false;
  Form1.Caption:='PlainText — Активирован таймер, 7 сек.';
end;

procedure TForm1.TrayIcon1Click(Sender: TObject);
begin
  Form1.ShowInTaskBar := stDefault;
  Form1.Show;
end;



end.

