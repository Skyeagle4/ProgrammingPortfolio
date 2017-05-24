Lines[] myLines = new Lines[10];

int reset = 0;

void setup() {
  size(displayWidth, displayHeight);
  background(0);
  frameRate(45);
  stroke(random(50, 255), random(50, 255), random(50, 255));
  for (int i=0; i<myLines.length; i++) {
    myLines [i] = new Lines(random(width), random(height), random(1, 5), random(10, 20));
  }
}

void draw() {
  for (int i=0; i<myLines.length; i++) {
    Lines iLines = myLines [i];
    iLines.display();
  }
  println(frameCount);
}