PImage img;
PImage img2;

public class Shark implements Animals {
  float xpos, ypos;
  int direction = 0;

  public Shark() {
    xpos = 300;
    ypos = 550;
  }

  void display() {
    img = loadImage("shark.png");
    img2 = loadImage("bubbles.png");
    image(img, xpos, ypos);
    image(img2, xpos+85, ypos+10);
  }

  void move() {
    img = loadImage("shark.png");
    img2 = loadImage("bubbles.png");

    if (xpos >= (width - 100)/2) {
      direction = 1;
    }

    if (xpos == 50) {
      direction = 0;
    } 

    if (direction==0) {
      xpos = xpos + 2;
      ypos--;
    } else {
      xpos = xpos - 2;
      ypos++;
    }
    image(img, xpos, ypos);
    image(img2, xpos+85, ypos+10);
  }
}