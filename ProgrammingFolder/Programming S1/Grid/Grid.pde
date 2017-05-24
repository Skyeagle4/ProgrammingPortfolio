void setup(){
  background(128);
  size(1000,1000);
  drawGrid();
}

void drawGrid(){
  for(int i=0; i<1000; i+= 100) {
    color(0);
    line(0, i, width, i);
    text(i,i,10);
    line(i, 0, i, height);
    text(i,0,i);
  }
}
//Will Mulcock was here :P
//So was Keegan Hardy
//I schooled him :D -Will