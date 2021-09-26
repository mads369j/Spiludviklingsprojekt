ArrayList<Virusser> virusserListe = new ArrayList<Virusser>();
ArrayList<Opgraderinger> opgraderingerListe = new ArrayList<Opgraderinger>();
ArrayList<Spoergsmaal> SpoergsmaalListe = new ArrayList<Spoergsmaal>();

int number = 0;
int vaccine = 0;
int sprit = 0;
int sygpleje = 0;
int doctor = 0;
int ambu = 0;
int hospi = 0;

billeder b = new billeder();

Corona corona = new Corona(b);
Ambulance ambulance = new Ambulance(b);
Doktor doktor = new Doktor(b);
Haandsprit haandsprit = new Haandsprit(b);
Hospital hospital = new Hospital(b);
Kanyle kanyle = new Kanyle(b);
Sygeplejske sygeplejske = new Sygeplejske(b);
Baggrund baggrund = new Baggrund(b);
DNA dna = new DNA(b);
ArrayList<Blodcelle> blodceller = new ArrayList<Blodcelle>();



void setup() {
size(1000,1000);
b.loadBilleder();
rectMode(CENTER);

for(int i = 0; i < 20; i++) {
  blodceller.add(new Blodcelle(b));
}
}

void draw() { 
clear();

if(frameCount % 60 == 0) {
  number += vaccine * 1;
  number += sprit * 5;
  number += sygpleje * 10;
  number += doctor * 25;
  number += ambu * 100;
  number += hospi * 250;
}

background (255,255,255);

for(Blodcelle b : blodceller) {
  b.display();
}
baggrund.display();
corona.display();
ambulance.display();
doktor.display();
haandsprit.display();
hospital.display();
kanyle.display();
sygeplejske.display();
dna.display();

println(mouseX,mouseY);

textSize(50);

fill(0,0,0);
text("Opgraderinger",610,70);

textSize(40);
text("DNA:" + number, 80,575);
text("Vaccine:" + vaccine,690,170);
text("Håndsprit:" + sprit,680,310);
text("Sygeplejske:" + sygpleje,660,460);
text("Doktor:" + doctor,695,610);
text("Ambulance:" + ambu,740,770);
text("Hospital:" + hospi,780,920);


}

void mouseClicked(){
  if(mouseX > 95 && mouseX < 450 && mouseY > 50 && mouseY < 450) {
    number++;
}

 if(mouseX > 700 && mouseX < 850 && mouseY > 160 && mouseY < 240 && number >= 10) {
    vaccine++;
    number -= 10;
}
if(mouseX > 700 && mouseX < 850 && mouseY > 325 && mouseY < 385 && number >= 50) {
    sprit++;
    number -= 50;
}

if(mouseX > 700 && mouseX < 850 && mouseY > 475 && mouseY < 525 && number >= 100) {
    sygpleje++;
    number -= 100;
}

if(mouseX > 700 && mouseX < 850 && mouseY > 615 && mouseY < 675 && number >= 250) {
    doctor++;
    number -= 250;
}

if(mouseX > 800 && mouseX < 950 && mouseY > 775 && mouseY < 840 && number >= 1000) {
    ambu++;
    number -= 1000;
}

if(mouseX > 800 && mouseX < 930 && mouseY > 850 && mouseY < 990 && number >= 2500) {
    hospi++;
    number -= 2500;
}



}
