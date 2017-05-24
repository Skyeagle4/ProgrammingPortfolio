void setup() {
  size(500,500);
}
void draw() {
  fill(random(0,255),random(0,255),random(0,255));
  ellipse(random(width+1),random(height+1),random(10,50),random(10,50));
  rect(random(width+1),random(height+1),random(10,50),random(10,50));
  triangle(random(width+1),random(height+1),random(width+1),random(height+1),random(width+1),random(height+1));
}