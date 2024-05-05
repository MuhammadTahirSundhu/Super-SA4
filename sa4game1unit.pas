//SA4 Spiel
//Safeer,Denny,Dahnesch,Aren,Ozgur,
unit SA4Game1Unit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Buttons,startunit, MMSystem; //MMSystem wegen Musik

type

  { TForm1 }

  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Image1: TImage;
    Image10: TImage;
    Image11: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Splitter1: TSplitter;
    procedure FormCreate(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;


implementation
VAR VName1,VName2:String; SoundPlaying:Boolean;Childform:TForm2;

{$R *.lfm}

{ TForm1 }



procedure TForm1.FormCreate(Sender: TObject);
begin
PlaySound(PChar('Fluffing-a-Duck_chosic.com_.wav'),0, SND_FILENAME or SND_ASYNC or SND_LOOP);  //Das die Hintergrundmusik in dauerschleife die ganze Zeit läuft
end;


procedure TForm1.Image2Click(Sender: TObject);
begin
 begin
    if NOT SoundPlaying then
   begin
     sndPlaysound(nil, SND_ASYNC); //Stopp die Musik wenn Musik am laufen ist
     SoundPlaying:=True;
   ShowMessage('Musik Stopp'); //Zeigt das die Musik gestoppt ist
   end
   else
   begin
     PlaySound('Fluffing-a-Duck_chosic.com_.wav', SND_ASYNC,SND_LOOP); //Wenn man drauf drückt spielt die Musik wieder
     SoundPlaying:=False;
     ShowMessage('Musik läuft'); //Zeigt an das die Musik läuft
 end;
end;
end;

procedure TForm1.Image7Click(Sender: TObject);


begin
ChildForm:= TForm2.Create(Self);
ChildForm.BorderStyle:=bsNone;
Childform.align:=alClient;
Childform.Parent:=Self;
Childform.show;

end;

procedure TForm1.Image8Click(Sender: TObject);
begin
  VName1:=Edit1.Text; //Name aus Edit Feld lesen
  VName2:=Edit2.Text;//Name aus Edit Feld lesen
  if Length(VName1)= 0 then //länge von Namen
  begin
  if (VName1='') OR (Vname1='Spieler1 Name') then
  ShowMessage('Wählen Sie einen Namen aus.')
  else
    //Edit1.SetFocus;//Wird auf Edit feld 1 geleitet
  end
  else
IF MessageDLG(VName1+'und'+VName2+'du willst uns wirklich verlassen?',mtconfirmation,[mbyes,mbno,mbcancel],0)=mryes
  Then
  ShowMessage('Du lässt uns im stich :(')  //Wenn man schließt wird das angezeigt
  //schließt

Else
  close;
  ShowMessage(VName1+'und'+VName2+'Gute Wahl getroffen, Viel Spaß beim weiterspielen!');
end;




end.

