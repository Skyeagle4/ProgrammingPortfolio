class Lines {
  // class variables
  float xpos, ypos, strokeW, pointCount;
  int reset = 0;

  // constructor
  Lines(float tempX, float tempY, float tempStroke, float tempLength) {
    xpos = tempX;
    ypos = tempY;
    strokeW = tempStroke;
    pointCount = tempLength;
  }

  //display
  void display() {
    reset ++;
    if (reset >= 1500) {
      background(0);
      reset = 0;
      stroke(random(50, 255), random(50, 255), random(50, 255));
    }
    strokeW = random(1, 5);
    strokeWeight(strokeW);
    if (xpos > width || xpos < 0 || ypos > height || ypos < 0) {
      xpos = random(width);
      ypos = random(height);
    } else {
      if (random(100)>72) {
        moveLeft(xpos, ypos, pointCount);
      } else if (random(100)>67) {
        moveUp(xpos, ypos, pointCount);
      } else if (random(100)>62) {
        moveDown(xpos, ypos, pointCount);
      } else if (random(100)>30) {
        moveRight(xpos, ypos, pointCount);
      } else if (random(100)>25) {
        moveDiagonalDR(xpos, ypos, pointCount);
      } else if (random(100)>15) {
        moveDiagonalUR(xpos, ypos, pointCount);
      } else if (random(100)>7) {
        moveDiagonalDL(xpos, ypos, pointCount);
      } else {
        moveDiagonalUL(xpos, ypos, pointCount);
      }
    }
    /*reset ++;
    if (reset >= 500) {
      background(255);
      reset = 0;
      stroke(random(255), random(255), random(255));
    }*/
  }
  void moveRight(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX+i, startY);
      xpos = startX+i;
    }
  }

  void moveLeft(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX-i, startY);
      xpos = startX-i;
    }
  }

  void moveUp(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX, startY-i);
      ypos = startY-i;
    }
  }

  void moveDown(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX, startY+i);
      ypos = startY+i;
    }
  }

  void moveDiagonalUR(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX+i, startY-i);
      xpos = startX+i;
      ypos = startY-i;
    }
  }

  void moveDiagonalUL(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX-i, startY-i);
      xpos = startX-i;
      ypos = startY-i;
    }
  }

  void moveDiagonalDR(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX+i, startY+i);
      xpos = startX+i;
      ypos = startY+i;
    }
  }

  void moveDiagonalDL(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX-i, startY+i);
      xpos = startX-i;
      ypos = startY+i;
    }
  }
}