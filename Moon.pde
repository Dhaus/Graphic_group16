public class Moon implements Celestial_Bodies {
  public Point origin;
  float xpos, ypos, speed, theta;
  color c;

  public Moon() {
    xpos = 800;
    ypos = 400;
    c = getColor();
    theta = 0.0;
  }
  
  void display() {
    fill(getColor());
    stroke(getColor());
    ellipse(xpos, ypos, 100, 100);
    strokeWeight(2);
  }
  
  public void move() {
      theta += 0.00235;
      xpos = xpos - sin(theta);
      ypos = ypos + cos(theta);
  }
  
  
  @Override
  public color getColor() {
    c = color(234, 237, 238); //gray
    return c;
  }
}