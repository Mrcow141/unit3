//pallete of colors
color purple =#4927B8;
color lavendar = #AFA0DF;
color gray = #807B8D;
color dpurple = #201169;
color blue = #2E54C5;
color black = #000000;
color lightgray = #7A797C;
// variables for color selection

color selectedColor;

void setup () {
  size(700, 700);
  strokeWeight(5);
  stroke(black);
  background(lavendar);
  selectedColor = gray;
}

void draw () {
  if (dist(600, 530, mouseX, mouseY) <75) {
    stroke(lightgray);
  } else {
    stroke(black);
  }
  fill(purple);
  circle(600, 530, 150);
  stroke(black);
  if (dist(600, 330, mouseX, mouseY) <75) {
    stroke(lightgray);
  } else {
    stroke(black);
  }
  fill(blue);
  circle(600, 330, 150);
  stroke(black);

  if (dist(600, 130, mouseX, mouseY) <75) {
    stroke(lightgray);
  } else {
    stroke(black);
  }
  fill(dpurple);
  circle(600, 130, 150);
  stroke(black);
  fill(selectedColor);
  square(100, 100, 400);
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
}
