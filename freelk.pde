//pallete of colors
color yorublue = #343dbc;
color ydblue =  #211f37;
color skblue = #1fc7ff;
color superbl = #9dd8f6;
color phantom = #444349;
color bred = #c27354;
color lightahh = #e8c5c9;
color dihblue = #e8c5c9;
color claw = #e8c5c9;

//not color selection buttons

color white = #FFFFFF;
color neptunevan = #45657e;

void setup()  {
  size(1400,900);
  strokeWeight(2);
  stroke(0);
}










void draw ()  {
background(white);
fill(neptunevan);
rect(0,0,400,900);


tactileC(

}










void tactileC ( int x, int y, int r)  {
 if(dist(x,y,mouseX,mouseY) <r) {
   stroke(160,32,240, 100);
 } else {
   stroke(0);
 }
}
