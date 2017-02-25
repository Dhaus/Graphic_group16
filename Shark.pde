PImage img;

public class Shark implements Animals {
  public Point origin;
  float xpos, ypos;
  int direction = 0;

  public Shark() {
    xpos = 300;
    ypos = 550;
  }

  void display() {
    img = loadImage("shark.png");
    image(img, xpos, ypos);
  }

  void move() {
    img = loadImage("shark.png");
    
    //xpos = xpos + xstep;
    //ypos = ypos + ystep;

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
  }
}