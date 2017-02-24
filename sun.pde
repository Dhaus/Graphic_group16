public class Sun implements Celestial_Bodies {
  public Point origin;
  float xpos, ypos, speed, theta;
  color c;

  public Sun() {
    xpos = 400;
    ypos = 0;
    c = getColor();
    speed = 4;
    theta = 0.0;
  }
  
  void display() {
    fill(getColor());
    stroke(getColor());
    ellipse(xpos, ypos, 100, 100);
    strokeWeight(2);
    line(xpos, ypos - 80, xpos, ypos + 80);
    line(xpos - 80, ypos, xpos + 80, ypos);
    line(xpos - 60, ypos - 60, xpos + 60, ypos + 60);
    line(xpos - 60, ypos + 60, xpos + 60, ypos - 60);
    move();
  }
  
  //updates the x, y values and adjusts bightness of the scene
  public void move() {
      theta += 0.0021;
      xpos = xpos + cos(theta);
      ypos = ypos + sin(theta);
      tint(0, 153, 204, 126);
  }
  
  @Override
  public color getColor() {
    c = color(245, 176, 65); //yellow
    return c;
  }
}