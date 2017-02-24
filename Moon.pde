public class Moon implements Celestial_Bodies {
  public Point origin;
  float xpos, ypos, speed, theta;
  color c;

  public Moon() {
    xpos = 400;
    ypos = 0;
    c = getColor();
    theta = 0.0;
  }
  
  void display() {
    fill(getColor());
    stroke(getColor());
    ellipse(xpos, ypos, 70, 70);
    strokeWeight(2);
  }
  
  public void move() {
      theta += 0.0021;
      xpos = xpos + cos(theta);
      ypos = ypos + sin(theta);
  }
  
  
  @Override
  public color getColor() {
    c = color(234, 237, 238); //gray
    return c;
  }
}