public class Sun {
  public int radius;
  public Point origin;
  float x, y;

  public Sun(float _x, float _y) {
    x = _x;
    y = _y;
  }
  
  void display() {
    fill(245, 176, 65); //yellow
    stroke(245, 176, 65);
    ellipse(x, y, 100, 100);
    strokeWeight(2);
    line(x, y - 80, x, y + 80);
    line(x - 80, y, x + 80, y);
    line(x - 60, y - 60, x + 60, y + 60);
    line(x - 60, y + 60, x + 60, y - 60);
  }
}