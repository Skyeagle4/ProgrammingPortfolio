int x, y;

void setup() {
  size(600,200);
  frameRate(10);
  x = 0;
  y = 0;
}

void draw() {
  fill(255);
  drawName();
  noLoop();
}

void drawName() {
  moveRight(1);
  moveDown(10);
  moveUp(5);
  moveDiagonalUp(5);
  moveDiagonalUp(-5);
  moveDiagonalDown(5);
  moveRight(1);
  moveUp(10);
  moveRight(7);
  moveLeft(7);
  moveDown(5);
  moveRight(5);
  moveLeft(5);
  moveDown(5);
  moveRight(7);
  moveRight(1);
  moveUp(10);
  moveRight(7);
  moveLeft(7);
  moveDown(5);
  moveRight(5);
  moveLeft(5);
  moveDown(5);
  moveRight(7);
  moveRight(1);
  moveUp(10);
  moveRight(7);
  moveDown(2);
  moveUp(2);
  moveLeft(7);
  moveDown(10);
  moveRight(7);
  moveUp(5);
  moveLeft(4);
  moveDown(2);
  moveUp(2);
  moveRight(5);
  moveLeft(1);
  moveDown(5);
  moveRight(1);
  moveDiagonalUpSharp(10);
  moveDiagonalDownSharp(5);
  moveDiagonalDownSharp(-11/4);
  moveLeft(6);
  moveRight(6);
  moveDiagonalDownSharp(11/4);
  moveRight(1);
  moveUp(10);
  moveRight(1);
  moveDiagonalDownSharp(5);
  moveRight(1);
  moveUp(10);
}

void moveRight(int rep) {
  for(int i=0;i<rep*10;i++){
    point(x+i,y);
  }
  x=x+(10*rep);
}

void moveLeft(int rep) {
  for(int i=0;i<rep*10;i++){
    point(x-i,y);
  }
  x=x-(10*rep);
}

void moveUp(int rep) {
  for(int i=0;i<rep*10;i++){
    point(x,y-i);
  }
  y=y-(10*rep);
}

void moveDown(int rep) {
  for(int i=0;i<rep*10;i++){
    point(x,y+i);
  }
  y=y+(10*rep);
}

void moveDiagonalUp(int rep){
  for(int i=0;i<rep*10;i++){
    point(x+i,y-i);
  }
  x=x+(10*rep);
  y=y-(10*rep);
}

void moveDiagonalDown(int rep){
  for(int i=0;i<rep*10;i++){
    point(x+i,y+i);
  }
  x=x+(10*rep);
  y=y+(10*rep);
}

void moveDiagonalUpSharp(int rep){
  for(int i=0;i<rep*10;i++){
    point(x+i*1/2,y-i);
  }
  x=x+(5*rep);
  y=y-(10*rep);
}

void moveDiagonalDownSharp(int rep){
  for(int i=0;i<rep*10;i++){
    point(x+i,y+i*2);
  }
  x=x+(10*rep);
  y=y+(20*rep);
}