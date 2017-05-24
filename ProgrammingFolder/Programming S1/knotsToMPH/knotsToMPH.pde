void setup() {
  size(850, 300);
}

void draw() {
  changeToKnots(mouseX-100);
  textSize(12);
  fill(0,255,0);
  text("By Keegan Hardy", 350, 75);
  fill(0,128,255);
  if (mouseX < 49) {
    rect(50,100,50,20);
  } else if (mouseX > 701) {
    rect(50,100,700,20);
  } else {
    rect(50,100,mouseX-50,20);
  }
  drawReference(50,100);
  changeToMph(mouseX-100);
  line(50,100,300,100);
  fill(0,0,255);
  if (mouseX < 49) {
    rect(50,200,50,20);
  } else if (mouseX > 701){
    rect(50,200,700,20);
  } else {
    rect(50,200,mouseX-50,20);
  }
  drawReference2(50,200);
  fill(255,0,0);
  text("A boat's speed accross the surface of water is measured in Miles per hour. This app works by dragging the mouse accross the screen to \nthe designated value of speed in either Mph, or Knots.", 5, 275);
}

//I am encountering a logic error where there is a +/- 1 innaccuracy per tick, where the value is slightly off if the user does not place the mouse dead at the exact center of the value they are trying to achieve.

void drawReference(int xpos, int ypos){
  fill(255);
  stroke(200);
  line(xpos, ypos, 750, ypos);
  for(int i = 0; i<=701; i=i+50) {
    line(xpos+i, ypos-5, xpos+i, ypos+5);
    text(i/7, xpos+i-5, ypos-8);
  }
}

float changeToKnots(float val) {
  val = ((val+50)/7) * 0.868976;
  background(255,150,0);
  fill(255);
  text("Miles per hour  =" + (mouseX-50)/7,50, 140);
  text("Knots =" + (val), 50, 160);
  textSize(36);
  text("Mph to Knots, and Knots to Mph", 150,50);
  stroke(3);
  line(150,53,715,53);
  
  return val;
}

void drawReference2(int xpos, int ypos){
  fill(255);
  stroke(200);
  line(xpos, ypos, 750, ypos);
  for(int i = 0; i<=701; i=i+50) {
    line(xpos+i, ypos-5, xpos+i, ypos+5);
    text(i/7, xpos+i-5, ypos-8);
  }
}

float changeToMph(float val) {
  val = ((val+50)/7) * 1.15078;
  fill(255);
  text("Knots  =" + (mouseX-50)/7,50, 240);
  text("Miles per hour =" + (val), 50, 260);
  return val;
}