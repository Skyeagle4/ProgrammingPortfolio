// runs exactly one time
void setup(){
  size(500,500);
  background(200);
  frameRate(220);
}

// operates on a loop
void draw() {
  background(200);
  fill(0,0,255);
  ellipse(mouseX,mouseY,50,50);
}