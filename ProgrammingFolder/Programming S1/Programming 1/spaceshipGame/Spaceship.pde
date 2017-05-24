class Spaceship {
  // member variables
  float x, y, xspeed, yspeed;
  float lLength = 200;
  


  // constructor
  Spaceship() {
    xspeed = 6;
    yspeed = 3;
  }

  // member methods
  void display() {
    // Ship
    fill(200);
    stroke(100);
    triangle(x-50, y+40, x-10, y+10, x-10, y-40);
    triangle(x+50, y+40, x+10, y+10, x+10, y-40);
    triangle(x-10, y+30, x+10, y+30, x, y-30);
    fill(255, 175, 0);
    stroke(0);
    quad(x-20, y-5, x-15, y-15, x-5, y+10, x-5, y+40);
    quad(x+20, y-5, x+15, y-15, x+5, y+10, x+5, y+40);
    triangle(x-50, y+30, x-15, y+5, x-15, y);
    triangle(x+50, y+30, x+15, y+5, x+15, y);
    // Cockpit
    fill(50);
    stroke(255);
    ellipse(x, y, 5, 30);
    // Weapons
    fill(50);
    stroke(100);
    rect(x-10, y-35, 5, -5);
    rect(x+10, y-35, -5, -5);
    rect(x-10, y-35, 3, -20);
    rect(x+10, y-35, -3, -20);
    quad(x-50, y+40, x-47, y+33, x-47, y-10, x-50, y-10);
    quad(x+50, y+40, x+47, y+33, x+47, y-10, x+50, y-10);
    // Engines
    fill(25);
    quad(x-40, y+33, x-40, y+40, x-30, y+40, x-30, y+25);
    quad(x+40, y+33, x+40, y+40, x+30, y+40, x+30, y+25);
    quad(x-30, y+25, x-30, y+35, x-25, y+35, x-25, y+22);
    quad(x+30, y+25, x+30, y+35, x+25, y+35, x+25, y+22);
    
    shipX = this.x;
    shipY = this.y;
  }

  void fly() {
    x = mouseX;
    y = mouseY;
  }

  void flyUp() {
    y-=yspeed;
  }
  void flyRight() {
    x+=xspeed;
  }
  void flyDown() {
    y+=yspeed;
  }
  void flyLeft() {
    x-=xspeed;
  }

  void shootL() {
    noStroke();
    for (int i = 0; i<lLength; i++) {
      fill (50, 200, 250);
      // Left laser
      ellipse(x-48.25, y-10-i, 2, 2);
      // Right laser
      ellipse(x+48.75, y-10-i, 2, 2);
    }
  }
}