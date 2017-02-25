PImage img;

public class Shark implements Animals {
  public Point origin;
  float xpos, ypos;
  int direction = 0;

  public Shark() {
    xpos = 300;
    ypos = 550;
  }