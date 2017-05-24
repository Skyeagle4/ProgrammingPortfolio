int x = 500;
int y = 500;
int a = 0;
int b = 255;
int c = 255;
void setup() {
  size(500,500);
  background(128);
  frameRate(60);
}
void draw() {
  background(128);
  fill(a++,b--,c--);
  ellipse(x--,y--,50,50);
  println(x);
}