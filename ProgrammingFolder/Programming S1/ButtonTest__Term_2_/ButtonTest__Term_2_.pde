/*int x = 50;
int y = 50;
int w= 100;
int h = 75;*/
Button b1;

void setup() {
  b1 = new Button(color(200),20,20,50,50,"Test");
}

void draw() {
  b1.display();
  b1.hover(mouseX, mouseY);
}