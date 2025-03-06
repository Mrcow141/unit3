//march 6th 2025
// Jamie Kwai
//block 2-4




//pallete of colors
color yorublue = #343dbc;
color ydblue =  #211f37;
color skblue = #1fc7ff;
color superbl = #9dd8f6;
color phantom = #444349;
color bred = #c27354;
color lightahh = #e8c5c9;
color dihblue = #3069ae;
color claw = #746c5f;

//not color selection buttons

color white = #FFFFFF;
color neptunevan = #45657e;
color black = #000000;
color lighty = #25cff2;

// slider
color selectedColor;
float sliderX;


void setup() {
  size(1400, 900);
  strokeWeight(2);
  stroke(black);
  background(white);
  selectedColor = white;
}


void draw () {
  fill(neptunevan); //useless info fr
  rect(0, 0, 400, 900);


  tactileR(40, 40, 80, 80); //square
  fill(yorublue);
  rect(40, 40, 80, 80);//first color
  stroke(black);


  tactileR(160, 40, 80, 80); //square
  fill(ydblue);
  rect(160, 40, 80, 80);//second color
  stroke(black);


  tactileR(280, 40, 80, 80);  //square
  fill(skblue);
  rect(280, 40, 80, 80);//third color
  stroke(black);

  tactileR(40, 160, 80, 80); //square
  fill(superbl);
  rect(40, 160, 80, 80); //fourth color
  stroke(black);

  tactileR(160, 160, 80, 80); //square
  fill(phantom);
  rect(160, 160, 80, 80); //fifth color
  stroke(black);

  tactileR(280, 160, 80, 80); //square
  fill(bred);
  rect(280, 160, 80, 80); //sixth color
  stroke(black);

  tactileC(78, 320, 40); //circle
  fill(lightahh);
  circle (78, 320, 80);//seventh color
  stroke(black);

  tactileC(200, 320, 40); //circle
  fill(dihblue);
  circle (200, 320, 80);// eighth  color
  stroke(black);

  tactileC(320, 320, 40); //circle
  fill(claw);
  circle (320, 320, 80);// eighth  color
  stroke(black);


  //indicator
  stroke(black);
  fill(selectedColor);
  rect(40, 400, 320, 100);
}


void tactileC (int x, int y, int r) {

  if (dist(x, y, mouseX, mouseY) <r) {
    stroke(lighty);
  } else {
    stroke(black);
  }
}







void tactileR ( int x, int y, int w, int h) {
  if (mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+h) {
    stroke(lighty);
  } else {
    stroke(black);
  }
}


void mouseReleased() {
  //square
  if (mouseX>40 && mouseX<120 && mouseY>40 && mouseY<120) {
    selectedColor = yorublue;//first block
  }
  if (mouseX>160 && mouseX<240 && mouseY>40 && mouseY<120) {
    selectedColor = ydblue;//second block
  }
  if (mouseX>280 && mouseX<360 && mouseY>40 && mouseY<120) {
    selectedColor = skblue;//third block
  }
  if (mouseX>40 && mouseX<120 && mouseY>160 && mouseY<240) {
    selectedColor = superbl;//fourth block
  }
  if (mouseX>160 && mouseX<240 && mouseY>160 && mouseY<240) {
    selectedColor = phantom;//fifth block
  }
  if (mouseX>280 && mouseX<360 && mouseY>160 && mouseY<240) {
    selectedColor = bred;//sixth block
  }

  //circle
  if (dist(78, 320, mouseX, mouseY) <40) {
    selectedColor = lightahh;//seventh color 1st circle
  }
  if (dist(200, 320, mouseX, mouseY) <40) {
    selectedColor = dihblue;//eighth color 2nd circle
  }
  if (dist(320, 320, mouseX, mouseY) <40) {
    selectedColor = claw;// ninth color 3rd circle
  }
}


void mouseDragged() {
  if(mouseX > 400)
    line(pmouseX,pmouseY,mouseX,mouseY);
}

void controlSlider() {
}
