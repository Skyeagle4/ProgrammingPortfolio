int xspeed, yspeed;
int xpos, ypos, wdth, ht;
void setup() {
  size(displayWidth,displayHeight);
  background(0);
  xspeed = 3;
  yspeed = 10;
  wdth = 10;
  ht = 10;
  noStroke();
  xpos = width/2;
  ypos = height/2;
  frameRate(60/2);
}
void draw() {
  //background(255);
  //fill(random(0,255),random(0,255),random(0,255));
  fill(255);
  ellipse(xpos, ypos, wdth*2, ht*2);
  ellipse(xpos, ypos, wdth, ht);
  xpos += xspeed;
  ypos += yspeed;
  if (xpos >=width-wdth/2 || xpos<= wdth/2){
    xspeed *= -1; //Checks for right side or left side, and inverses the x value as it is approached
  }
  if (ypos >= height-ht/2 || ypos <ht/2){
    yspeed = yspeed * -1; //Checks for top or bottom side, and inverses the y value as it is approached
  }
}