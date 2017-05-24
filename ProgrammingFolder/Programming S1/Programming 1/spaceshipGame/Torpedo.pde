class Torpedo {

  float x, y, tXFixed, tYFixed;
  boolean show;

  Torpedo(float x, float y) {
    this.x = x;
    this.y = y;
    tXFixed = shipX;
    tYFixed = shipY;
    show = false;
  }

  void shootT () {
    if (keyPressed && key == 't') {
      tXFixed = shipX;
      tYFixed = shipY;
      show = true;
    }
  }

  void display () {
    if (show) {
      x = shipX;
      y = shipY;
      if (y>0) {
        shipY -= 15;
        strokeWeight(1);
        stroke(255, 0, 255);
        fill(50, 50, 255);
        ellipse(shipX-7.75, shipY-55, 5, 13);
        ellipse(shipX+8.75, shipY-55, 5, 13);
      }
    }
  }
}