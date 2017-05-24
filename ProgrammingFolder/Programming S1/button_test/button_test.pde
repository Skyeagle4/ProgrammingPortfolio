void setup() {
  size(500,500);
}

void draw() {
  button(10,10,100,30,"Test button");
  button(10,50,100,30,"Test button");
  button(130,10,100,30,"Test button");
}

void button(int x, int y, int w, int h, String bt) {
  //bottom rect (Shaddow)
  noStroke();
  fill(125);
  rect(x+3,y+3,w,h,10);
  
  //top rect
  stroke(0);
  fill(220);
  rect(x,y,w,h,10);
  
  //render text
  fill(0);
  text(bt,x+15,y+20);
}