Spaceship s1;
Torpedo t1;

float fired, shipX, shipY;

void setup() {
  size(900, 900);
  background(0);
  s1 = new Spaceship();
  frameRate(100);
  fired = 0;
  noCursor();
}

void draw() {
  shipX = s1.x;
  shipY = s1.y;
  noCursor();
  background(0);
  s1.display();
  s1.fly();
  if (keyPressed || mousePressed) {
    if (key == ' ' || mousePressed == true) {
      s1.shootL();
      fired++;
    }
  } 
  if (key == 't') {
    t1 = new Torpedo (s1.x, s1.y);
    t1.display();
    t1.shootT();
    //t1.y++;
  }
}

//void mousePressed() {

//}