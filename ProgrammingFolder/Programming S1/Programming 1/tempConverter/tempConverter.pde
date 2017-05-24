void setup() {
  size(850, 300);
}

void draw() {
  changeToFar(mouseX-100);
  line(50,50,300,50);
  fill(255,0,0);
  rect(50,50,mouseX-50,20);
  drawReference(50,50);
}

void drawReference(int xpos, int ypos){
  fill(255);
  stroke(200);
  line(xpos, ypos, 800, ypos);
  for(int i = 0; i<=751; i=i+50) {
    line(xpos+i, ypos-5, xpos+i, ypos+5);
    text(i, xpos+i-5, ypos-8);
  }
}

float changeToFar(float val) {
  val = (val-32) * 5/9;
  background(175);
  fill(255);
  text("Farenheit value =" + int(mouseX - 50),50, 100);
  text("Cellsius value =" + int(val), 50, 130);
  return val;
}