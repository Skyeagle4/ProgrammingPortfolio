void setup() {
  size(650,550);
  background(150);
}
void draw() {
  fill(255, 255, 0);
  rect(20,20,120,120);
  rect(180,20,120,120,20);
  rect(340,20,120,120,20,10,40,80);
  rect(500,40,120,80);
  fill(255,0,0);
  ellipse(70,240,120,120);
  ellipse(240,240,120,80);
  ellipse(400,240,80,120);
  fill(0,0,255);
  triangle(560,180,620,300,500,300);
  triangle(40,340,120,460,20,410);
  fill(0,255,255);
  quad(180,340,300,340,300,380,180,460);
  quad(400,340,440,400,400,460,360,400);
  quad(500,340,620,400,500,460,560,400);
}