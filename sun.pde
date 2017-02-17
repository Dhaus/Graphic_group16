public class Sun {
  public int radius;
  public Point origin;

  public Sun(Point p) {
      origin = p;
      ellipse(p.x, p.y, 100, 100);
  }
}