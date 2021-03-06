unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus,
  System.ImageList, Vcl.ImgList;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    ComboBox1: TComboBox;
    MainMenu1: TMainMenu;
    A1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Memo1: TMemo;
    Memo2: TMemo;
    Edit4: TEdit;
    Button3: TButton;
    ComboBox2: TComboBox;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure N9Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  mors: array [1 .. 41] of string = (
    '.-   ',
    '-... ',
    '-.-. ',
    '-..  ',
    '.    ',
    '..-. ',
    '--.  ',
    '.... ',
    '..   ',
    '.--- ',
    '-.-  ',
    '.-.. ',
    '--   ',
    '-.   ',
    '---  ',
    '.--. ',
    '--.- ',
    '.-.  ',
    '...  ',
    '-    ',
    '..-  ',
    '...- ',
    '.--  ',
    '-..- ',
    '-.-- ',
    '--.. ',
    '---- ',
    '---. ',
    '..-- ',
    '..-..',
    '.-.- ',
    '.----',
    '..---',
    '...--',
    '....-',
    '.....',
    '-....',
    '--...',
    '---..',
    '----.',
    '-----'
  );
  kir: array [1 .. 31] of string = (
    '?',
    '?',
    '?',
    '?',
    '?',
    '?',
    '?',
    '?',
    '?',
    '?',
    '?',
    '?',
    '?',
    '?',
    '?',
    '?',
    '?',
    '?',
    '?',
    '?',
    '?',
    '?',
    '?',
    '?',
    '?',
    '?',
    '?',
    '?',
    '?',
    '?',
    '?'
  );
  lat: array [1 .. 26] of string = (
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
    'g',
    'h',
    'i',
    'j',
    'k',
    'l',
    'm',
    'n',
    'o',
    'p',
    'q',
    'r',
    's',
    't',
    'u',
    'v',
    'w',
    'x',
    'y',
    'z'
  );

implementation

{$R *.dfm}

uses ABOUT;

procedure TForm1.Button1Click(Sender: TObject);
var
  i, z: integer;
  g: string;
begin
  Edit1.Text := Memo1.Text;
  case ComboBox1.ItemIndex of
    0: // cesar
      begin
        if (strtoint(Edit3.Text) < 1) or (strtoint(Edit3.Text) > 32) then
        begin
          Edit3.font.color := $0000FF;
          Edit3.Text := '??????! ??????? ?????? ?????!';
        end
        else
        begin
          for i := 1 to length(Edit1.Text) do
          begin
            case Edit1.Text[i] of
              '?' .. '?':
                begin
                  z := ord(Edit1.Text[i]) - strtoint(Edit3.Text);
                  if z < ord(Edit4.Text[3]) then
                    g := g + chr(z + 32)
                  else if z > ord(Edit4.Text[4]) then
                    g := g + chr(z + 32)
                  else
                    g := g + chr(z);
                end;
              '?' .. '?':
                begin
                  z := ord(Edit1.Text[i]) - strtoint(Edit3.Text);
                  if z < ord(Edit4.Text[1]) then
                    g := g + chr(z + 32)
                  else if z > ord(Edit4.Text[2]) then
                    g := g + chr(z + 32)
                  else
                    g := g + chr(z);
                end;
              'a' .. 'z':
                begin
                  z := ord(Edit1.Text[i]) - strtoint(Edit3.Text);
                  if z < ord('a') then
                    g := g + chr(z + 26)
                  else
                    g := g + chr(z);
                end;
              'A' .. 'Z':
                begin
                  z := ord(Edit1.Text[i]) - strtoint(Edit3.Text);
                  if z < ord('A') then
                    g := g + chr(z + 26)
                  else
                    g := g + chr(z);
                end;
            else
              g := g + Edit1.Text[i];
            end;
          end;
          Edit2.Text := g;
        end;
        Memo2.Text := Edit2.Text;
      end;
    1: // atbash
      begin

      end;
    2: // morse
      begin
        Edit2.Text := '';
        i := 1;
        case ComboBox2.ItemIndex of
          0:
            begin
              repeat
                g := Edit1.Text[i] + Edit1.Text[i + 1] + Edit1.Text[i + 2] +
                  Edit1.Text[i + 3] + Edit1.Text[i + 4];
                z := 1;
                while (z <= 41) and (g <> mors[z]) do
                  z := z + 1;
                if z > 41 then
                begin
                  Edit2.Text := Edit2.Text + Edit1.Text[i];
                  i := i + 1;
                end
                else
                begin
                  Edit2.Text := Edit2.Text + kir[z];
                  i := i + 5;
                end;

              until i > length(Edit1.Text);
              Memo2.Text := Edit2.Text;
            end;

          1:
            begin
              repeat
                g := Edit1.Text[i] + Edit1.Text[i + 1] + Edit1.Text[i + 2] +
                  Edit1.Text[i + 3] + Edit1.Text[i + 4];
                z := 1;
                while (z <= 41) and (g <> mors[z]) do
                  z := z + 1;
                if z > 41 then
                begin
                  Edit2.Text := Edit2.Text + Edit1.Text[i];
                  i := i + 1;
                end
                else
                begin
                  Edit2.Text := Edit2.Text + lat[z];
                  i := i + 5;
                end;

              until i > length(Edit1.Text);
              Memo2.Text := Edit2.Text;
            end;

        end;
      end;

  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  i, z, y, vs, vsc: integer;
  g: string;

begin
  Edit1.Text := Memo1.Text;
  g := '';
  case ComboBox1.ItemIndex of
    0: // cesar
      begin
        if (strtoint(Edit3.Text) < 1) or (strtoint(Edit3.Text) > 32) then
        begin
          Edit3.font.color := $0000FF;
          Edit3.Text := '??????! ??????? ?????? ?????!';
        end
        else
        begin
          for i := 1 to length(Edit1.Text) do
          begin
            vs := ord(Edit1.Text[i]);
            y := vs + strtoint(Edit3.Text); // ?????????? ???????
            case Edit1.Text[i] of
              '?' .. '?':
                begin
                  if y > ord(Edit4.Text[4]) then
                    y := y - 32;
                  if y < ord(Edit4.Text[3]) then
                    y := y + 32;
                  g := g + chr(y);
                end;
              '?' .. '?':
                begin
                  vsc := ord(Edit4.Text[2]);
                  if y > vsc then
                    y := y - 32;
                  if y < ord(Edit4.Text[1]) then
                    y := y + 32;
                  g := g + chr(y);
                end;
              'a' .. 'z':
                begin
                  if y > ord('z') then
                    y := y - 26;
                  g := g + chr(y);
                end;
              'A' .. 'Z':
                begin
                  if y > ord('Z') then
                    y := y - 26;
                  g := g + chr(y);
                end
            else
              g := g + Edit1.Text[i];
            end;
            Edit2.Text := g;
          end;
        end;
        Memo2.Text := Edit2.Text;
      end;
    1: // atbash
      begin
        Edit1.Text := Memo1.Text;
        for i := 1 to length(Edit1.Text) do
        begin
          case Edit1.Text[i] of
            '?' .. '?':
              begin
                g := g + chr(1103 - ord(Edit1.Text[i]) + 1072);
              end;
            '?' .. '?':
              begin
                g := g + chr(1071 - ord(Edit1.Text[i]) + 1040);
              end;
            'a' .. 'z':
              begin
                g := g + chr(122 - ord(Edit1.Text[i]) + 97);
              end;
            'A' .. 'Z':
              begin
                g := g + chr(90 - ord(Edit1.Text[i]) + 65);
              end;
          else
            g := g + Edit1.Text[i];
          end;
          Edit2.Text := g;
          Memo2.Text := Edit2.Text;
        end;
      end;
    2:
      begin
        Edit2.Text := '';
        for i := 1 to length(Edit1.Text) do
        begin
          case Edit1.Text[i] of
            'a', '?', 'A', '?':
              Edit2.Text := Edit2.Text + mors[1];
            'b', '?', 'B', '?':
              Edit2.Text := Edit2.Text + mors[2];
            'c', '?', 'C', '?':
              Edit2.Text := Edit2.Text + mors[3];
            'd', '?', 'D', '?':
              Edit2.Text := Edit2.Text + mors[4];
            'e', '?', '?', 'E', '?', '?':
              Edit2.Text := Edit2.Text + mors[5];
            'f', '?', 'F', '?':
              Edit2.Text := Edit2.Text + mors[6];
            'g', '?', 'G', '?':
              Edit2.Text := Edit2.Text + mors[7];
            'h', '?', 'H', '?':
              Edit2.Text := Edit2.Text + mors[8];
            'i', '?', 'I', '?':
              Edit2.Text := Edit2.Text + mors[9];
            'j', '?', 'J', '?':
              Edit2.Text := Edit2.Text + mors[10];
            'k', '?', 'K', '?':
              Edit2.Text := Edit2.Text + mors[11];
            'l', '?', 'L', '?':
              Edit2.Text := Edit2.Text + mors[12];
            'm', '?', 'M', '?':
              Edit2.Text := Edit2.Text + mors[13];
            'n', '?', 'N', '?':
              Edit2.Text := Edit2.Text + mors[14];
            'o', '?', 'O', '?':
              Edit2.Text := Edit2.Text + mors[15];
            'p', '?', 'P', '?':
              Edit2.Text := Edit2.Text + mors[16];
            'q', '?', 'Q', '?':
              Edit2.Text := Edit2.Text + mors[17];
            'r', '?', 'R', '?':
              Edit2.Text := Edit2.Text + mors[18];
            's', '?', 'S', '?':
              Edit2.Text := Edit2.Text + mors[19];
            't', '?', 'T', '?':
              Edit2.Text := Edit2.Text + mors[20];
            'u', '?', 'U', '?':
              Edit2.Text := Edit2.Text + mors[21];
            'v', '?', 'V', '?':
              Edit2.Text := Edit2.Text + mors[22];
            'w', '?', 'W', '?':
              Edit2.Text := Edit2.Text + mors[23];
            'x', '?', '?', 'X', '?', '?':
              Edit2.Text := Edit2.Text + mors[24];
            'y', '?', 'Y', '?':
              Edit2.Text := Edit2.Text + mors[25];
            'z', '?', 'Z', '?':
              Edit2.Text := Edit2.Text + mors[26];
            '?', '?':
              Edit2.Text := Edit2.Text + mors[27];
            '?', '?':
              Edit2.Text := Edit2.Text + mors[28];
            '?', '?':
              Edit2.Text := Edit2.Text + mors[29];
            '?', '?':
              Edit2.Text := Edit2.Text + mors[30];
            '?', '?':
              Edit2.Text := Edit2.Text + mors[31];
            '1':
              Edit2.Text := Edit2.Text + mors[32];
            '2':
              Edit2.Text := Edit2.Text + mors[33];
            '3':
              Edit2.Text := Edit2.Text + mors[34];
            '4':
              Edit2.Text := Edit2.Text + mors[35];
            '5':
              Edit2.Text := Edit2.Text + mors[36];
            '6':
              Edit2.Text := Edit2.Text + mors[37];
            '7':
              Edit2.Text := Edit2.Text + mors[38];
            '8':
              Edit2.Text := Edit2.Text + mors[39];
            '9':
              Edit2.Text := Edit2.Text + mors[40];
            '0':
              Edit2.Text := Edit2.Text + mors[41];
          else
            Edit2.Text := Edit2.Text + Edit1.Text[i];
          end;
        end;
        Memo2.Text := Edit2.Text;
      end;

  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Memo1.Text := Memo2.Text;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    0:
      begin
        Button1.Visible := true;
        Button2.Caption := '????';
        Edit3.Visible := true;
        ComboBox2.Visible := false;
      end;
    1:
      begin
        Button1.Visible := false;
        Button2.Caption := '????/??????';
        Edit3.Visible := false;
        ComboBox2.Visible := false;
      end;
    2:
      begin
        Button1.Visible := true;
        Button2.Caption := '????';
        Edit3.Visible := false;
        ComboBox2.Visible := true;
      end;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Memo1.Text := '';
  Memo2.Text := '';
  combobox2.Visible:=false;
end;

procedure TForm1.N1Click(Sender: TObject);
begin
  Edit1.Text := '';
  Edit2.Text := '';
  Edit3.Text := '';
  Memo1.Text := '';
  Memo2.Text := '';
  ComboBox1.ItemIndex := -1;
end;

procedure TForm1.N2Click(Sender: TObject);
var
  openDialog: TOpenDialog;
begin
  openDialog := TOpenDialog.Create(self);
  openDialog.Filter :=
    'Text file|*.txt |Word file 97-2003|*.docx |Word file|*.doc |Pascal file|*.pas |Web-s-ite file|*.html';
  openDialog.DefaultExt := 'txt';
  if OpenDialog1.Execute then
    Memo1.lines.LoadFromFile(OpenDialog1.FileName);
  Edit1.Text := Memo1.Text;
end;

procedure TForm1.N3Click(Sender: TObject);
var
  saveDialog: TSaveDialog;
begin
  saveDialog := TSaveDialog.Create(self);
  saveDialog.Filter := 'Text file|*.txt|Word file|*.doc';
  saveDialog.DefaultExt := 'txt';
  if saveDialog.Execute then
    Memo2.lines.SaveToFile(saveDialog.FileName);
end;

procedure TForm1.N4Click(Sender: TObject);
var
  saveDialog: TSaveDialog;
begin
  saveDialog := TSaveDialog.Create(self);
  saveDialog.Filter :=
    'Text file|*.txt |Word file 97-2003|*.docx |Word file|*.doc |Pascal file|*.pas |Web-s-ite file|*.html';
  saveDialog.DefaultExt := 'txt';
  if saveDialog.Execute then
    Memo2.lines.SaveToFile(saveDialog.FileName);
end;

procedure TForm1.N6Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.N9Click(Sender: TObject);
begin
about.AboutBox.Show;
end;

end.
