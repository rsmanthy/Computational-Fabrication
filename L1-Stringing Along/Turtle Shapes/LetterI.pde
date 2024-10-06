import Turtle.*;
Turtle t;

void setup() {
  size(100, 100);
  background(255);
  stroke(0);
  t = new Turtle(this);
  noLoop();
}
void draw () {
  // Letter "I"
  t.goToPoint(50, 50); // Starting point
  t.penDown();
  t.forward(25); // Vertical line
  //left T
  t.left(90);
  t.forward(15);
  //Right T
  t.right(180);
  t.forward(30);
  //Back to center
  t.left(180);
  t.forward(15);
  //Back to center
  t.left(90);
  t.forward(25);
  //left bottom 
  t.left(90);
  t.forward(15);
  //Right bottom 
  t.right(180);
  t.forward(30);
  t.penUp();
}
