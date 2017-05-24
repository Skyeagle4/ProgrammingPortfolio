Spaceship s1;

float fired;

void setup() {
  size(900, 900);
  background(0);
  s1 = new Spaceship();
  frameRate(100);
  fired = 0;
}

void draw() {
  noCursor();
  background(0);
  s1.display();
  s1.fly();
  if(keyPressed || mousePressed) {
    if(key == ' ' || mousePressed == true) {
      s1.shootL();
      s1.shootT();
      fired++;
    }
  }
}

void mousePressed() {
  
}