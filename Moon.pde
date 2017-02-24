public class Moon implements Celestial_Bodies {
  public Point origin;
  float xpos, ypos, speed;
  color c;

  public Moon() {
    //x = _x;
    //y = _y;
  }
  
  void display() {
    fill(getColor());
    stroke(getColor());
    //ellipse(x, y, 70, 70);
    strokeWeight(2);
  }
  
  @Override
  public color getColor() {
    c = color(234, 237, 238); //gray
    return c;
  }
}