import controlP5.*;
ControlP5 cp5;
PFont font;

color yellow = color(255,255,0);
color black = color(0);
color red = color(255,0,0);
color panelbg = color(147, 157, 177);
int f3 = 0;
int f2 = 0;
int f1 = 0;
int fb = 0;
int od = 0;
int cd = 0;

PShape floorThree, floorTwo, floorOne, floorBase, openDoor, closeDoor;

String floorLevel = "";

void setup() {
  size(640, 900);
  cp5 = new ControlP5(this);
  font = createFont("Georgia",20);
  
  cp5.addButton("FIRE",0,163,200,160,90).setColorForeground(#FF0000).setColorBackground(#FF0000).getCaptionLabel().setFont(new ControlFont(createFont("Georgia",35), 35));
  cp5.addButton("CALL",0,330,200,170,42).setColorActive(#36454F).setColorForeground(#36454F).setColorBackground(#36454F).getCaptionLabel().setFont(new ControlFont(createFont("Georgia",20), 25));
  cp5.addButton("ALARM",0,330,248,170,42).setColorActive(#36454F).setColorForeground(#36454F).setColorBackground(#36454F).getCaptionLabel().setFont(new ControlFont(createFont("Georgia",20), 25));
  cp5.addButton("3",0,300,350,50,50).setColorActive(#36454F).setColorForeground(#36454F).setColorBackground(#36454F).getCaptionLabel().setFont(new ControlFont(createFont("Georgia",20), 25));
  cp5.addButton("2",0,300,445,50,50).setColorActive(#36454F).setColorForeground(#36454F).setColorBackground(#36454F).getCaptionLabel().setFont(new ControlFont(createFont("Georgia",20), 25));
  cp5.addButton("1",0,300,540,50,50).setColorActive(#36454F).setColorForeground(#36454F).setColorBackground(#36454F).getCaptionLabel().setFont(new ControlFont(createFont("Georgia",20), 25));
  cp5.addButton("B",0,300,635,50,50).setColorActive(#36454F).setColorForeground(#36454F).setColorBackground(#36454F).getCaptionLabel().setFont(new ControlFont(createFont("Georgia",20), 25));
  cp5.addButton("> | <",0,200,730,50,50).setColorActive(#36454F).setColorForeground(#36454F).setColorBackground(#36454F).getCaptionLabel().setFont(new ControlFont(createFont("Georgia",20), 25));
  cp5.addButton("< | >",0,400,730,50,50).setColorActive(#36454F).setColorForeground(#36454F).setColorBackground(#36454F).getCaptionLabel().setFont(new ControlFont(createFont("Georgia",20), 25));
}

void draw() {
  background(111,111,121);
  fill(panelbg);
  rect(100, 70, 450, 750);
  fill(black);
  rect(300, 110, 60, 60);
  
  fill(black);
  rect(155,195,350,100);
  
  //light up buttons
  fill(f3);
  floorThree = createShape(ELLIPSE, 325, 375, 77, 77);
  fill(f2);
  floorTwo = createShape(ELLIPSE, 325, 470, 77, 77);
  fill(f1);
  floorOne = createShape(ELLIPSE, 325, 565, 77, 77);
  fill(fb);
  floorBase = createShape(ELLIPSE, 325, 660, 77, 77);
  fill(od);
  openDoor = createShape(ELLIPSE, 225, 755, 77, 77);
  fill(cd);
  closeDoor = createShape(ELLIPSE, 425, 755, 77, 77);
  
  shape(floorThree);
  shape(floorTwo);
  shape(floorOne);
  shape(floorBase);
  shape(openDoor);
  shape(closeDoor);
  
  // cover circles
  fill(#36454F);
  ellipse(325, 375, 70, 70);
  ellipse(325, 470, 70, 70);
  ellipse(325, 565, 70, 70);
  ellipse(325, 660, 70, 70);
  ellipse(225, 755, 70, 70);
  ellipse(425, 755, 70, 70);
  
  // current floor level
  textFont(font);
  textSize(35);
  fill(255);
  text(floorLevel, 323, 150);
  
  
}

//Generic event handler
void controlEvent(ControlEvent theEvent){
  if (theEvent.getName()=="FIRE") {
     cp5.getController("FIRE").setColorBackground(black);    
  }
  if (theEvent.getName()=="3" && f3!=yellow) {
     f3 = yellow;
     floorLevel = "3";
  } else {
    f3 = black;
  }
  if (theEvent.getName()=="2" && f2!=yellow) {
     f2 = yellow;
     floorLevel = "2";
  } else {
    f2 = black;
  }
  if (theEvent.getName()=="1" && f1!=yellow) {
     f1 = yellow;
     floorLevel = "1";
  } else {
    f1 = black;
  }
  if (theEvent.getName()=="B" && fb!=yellow) {
     fb = yellow;
     floorLevel = "B";
  } else {
    fb = black;
  }
  if (theEvent.getName()=="> | <" && od!=yellow) {
     od = yellow; 
  } else {
    od = black;
  }
  if (theEvent.getName()=="< | >" && cd!=yellow) {
     cd = yellow; 
  } else {
     cd = black;
  }
}
