//pallete of colors
color purple =#4927B8;
color lavendar = #AFA0DF;
color gray = #807B8D;
color dpurple = #201169;
color blue = #2E54C5;
color black = #000000;
color lightgray = #7A797C;
//rect colors
color dblue = #033c8d;
color pink = #ffb7c5;
color pinktw = #fe028d;
color white = #ffffff;
// variables for color selection

color selectedColor;

//slider
float sliderY;
float cchange;

void setup () {
  size(700, 700);
  strokeWeight(5);
  stroke(black);
  selectedColor = gray;
  sliderY = 350;
  cchange = 0; 
}

void draw () {
  background(lavendar);
  tactileC(600, 530, 75);
  fill(purple);
  circle(600, 530, 150);
  stroke(black);

  tactileC(600, 330, 75);
  fill(blue);
  circle(600, 330, 150);
  stroke(black);

  tactileC(600, 130, 75);
  fill(dpurple);
  circle(600, 130, 150);

  stroke(black);
  fill(selectedColor);
  square(100, 160, 400);//square

tactileR(100, 30, 80, 80);
  fill(dblue);
  rect(100, 30, 80, 80);
  stroke(black);

tactileR(250, 30, 80, 80);
  fill(pink);
  rect(250, 30, 80, 80);
  stroke(black);

tactileR(400, 30, 80, 80);
  fill(pinktw);
  rect(400, 30, 80, 80);
  stroke(black);
  
  //slider
  line(50,170,50,560);
  noStroke();;
  circle(50,sliderY,25);
  
}


void tactileC (int x, int y, int r) {

  if (dist(x, y, mouseX, mouseY) <r) {
    stroke(lightgray);
  } else {
    stroke(black);
  }
}

void tactileR (int x, int y, int w, int h) {

  if(mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+h) {
    stroke(white);
  } else {
    stroke(black);
  }
}



void mouseReleased() {
  if (dist(600, 530, mouseX, mouseY) <75) {
    selectedColor = purple;
  }

  if (dist(600, 330, mouseX, mouseY) <75) {
    selectedColor = blue;
  }
  if (dist(600, 130, mouseX, mouseY) <75) {
    selectedColor = dpurple;
  }

  // square
  if ( mouseX>100 && mouseX<180 && mouseY>30 && mouseY<110){
  selectedColor = dblue;
  }
  if ( mouseX>250 && mouseX<330 && mouseY>30 && mouseY<110){
  selectedColor = pink;
  }
  if ( mouseX>400 && mouseX<480 && mouseY>30 && mouseY<110){
  selectedColor = pinktw;
  }
  
  controlSlider();
  
}

void mouseDragged() {
  controlSlider();
}



void controlSlider()  {
 if(mouseY>170 && mouseY < 560 && mouseX>25 && mouseX < 70){
  sliderY = mouseY;
  }  
  cchange = sliderY;
}
