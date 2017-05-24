class Car {

  // member variables
  color c;
  float xpos;
  float ypos;
  float xspeed;

  // constructor
  Car() {
    c = color(random(255), random(255), random(255));
    xpos = width/2;
    ypos = random(height);
    xspeed = random(5);
  }

  // member methods
  void display() {
    rectMode(CENTER);
    fill(c);
    rect(xpos, ypos, 20, 10);
    fill(128);
    rect(xpos+5, ypos-5, 7, 4);
    rect(xpos+5, ypos+5, 7, 4);
    rect(xpos-5, ypos-5, 7, 4);
    rect(xpos-5, ypos+5, 7, 4);
  }

  void drive() {
    xpos = xpos + xspeed;
    if (xpos > width) {
      xpos = 0;
      ypos = random(height);
      xspeed = random(1, 5);
      c = color(random(255), random(255), random(255));
    }
  }
}