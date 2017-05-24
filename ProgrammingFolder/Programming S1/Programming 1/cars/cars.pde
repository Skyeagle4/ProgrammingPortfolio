//creating a car object
Car c1;
Car c2;
Car [] cars = new Car [100];

void setup() {
  size (displayWidth, displayHeight);
  for (int i = 0; i < cars.length; i++) {
    cars [i] = new Car();
  }
}

void draw() {
  background(0);
  for (int i = 0; i < cars.length; i++) {
    cars [i].display();
    cars [i].drive();
  }
}