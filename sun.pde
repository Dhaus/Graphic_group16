public class Sun implements Celestial_Bodies {
  public Point origin;
  float x, y;
  color c;

  public Sun(float _x, float _y) {
    x = _x;
    y = _y;
  }
  
  void display() {
    fill(getColor());
    stroke(getColor());
    ellipse(x, y, 100, 100);
    strokeWeight(2);
    line(x, y - 80, x, y + 80);
    line(x - 80, y, x + 80, y);
    line(x - 60, y - 60, x + 60, y + 60);
    line(x - 60, y + 60, x + 60, y - 60);
  }
  
  @Override
  public color getColor() {
    c = color(245, 176, 65); //yellow
    return c;
  }
}