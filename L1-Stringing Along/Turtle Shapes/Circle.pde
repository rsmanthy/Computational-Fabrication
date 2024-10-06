import Turtle.*;
Turtle t;

void setup() {
  size(800, 800);
  background(255);
  stroke(0);
  t = new Turtle(this);
  noLoop();
}
void draw () {
  // Letter "I"
  t.penUp();
  t.goToPoint(100, 150); // Starting point
  t.penDown();
  for(int i = 0; i < 360; i++)
  {
    t.forward(2);
    t.right(1);
  }
}
