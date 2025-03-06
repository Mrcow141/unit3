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
float
  void setup() {
  size(1400, 900);
  strokeWeight(2);
  stroke(black);
}


void draw () {
  background(white); //useless info fr
  fill(neptunevan);
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

  tactileC(78, 320, 80); //circle
  fill(lightahh);
  circle (78, 320, 80);//seventh color
  stroke(black);

  tactileC(200, 320, 80); //circle
  fill(dihblue);
  circle (200, 320, 80);// eighth  color
  stroke(black);

  tactileC(320, 320, 80); //circle
  fill(claw);
  circle (320, 320, 80);// eighth  color
  stroke(black);
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
}

void mouseDragged() {
}

void controlSlider() {
}
