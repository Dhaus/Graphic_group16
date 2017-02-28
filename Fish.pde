public class Fish implements Animals {
  float xpos, ypos, theta;
  int direction = 0;
  int opacity = 255;

  public Fish() {
    xpos = 800;
    ypos = 580;
    theta = 0.0;
  }

  void display() {
    img = loadImage("fish2.png");
    img2 = loadImage("bubbles.png");
    image(img, xpos, ypos);
    image(img2, (xpos + 25), 560);
  }

  void move() {
    img = loadImage("fish2.png");
    img2 = loadImage("bubbles.png");
    theta += 0.25;
    xpos--;
    ypos = ypos + cos(theta);
    image(img, xpos, ypos);
    image(img2, (xpos+25), 560);
    if (xpos == 0) {
      xpos = 800;
    }
    

  }
}