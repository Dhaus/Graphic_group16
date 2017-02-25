public class Fish implements Animals {
  float xpos, ypos, theta;
  int direction = 0;

  public Fish() {
    xpos = 800;
    ypos = 580;
    theta = 0.0;
  }

  void display() {
    img = loadImage("fish2.png");
    image(img, xpos, ypos);
  }

  void move() {
    img = loadImage("fish2.png");
    theta += 0.25;
    xpos--;
    ypos = ypos + cos(theta);
    image(img, xpos, ypos);
    if (xpos == 0) {
      xpos = 800;
    }
  }
}