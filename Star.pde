public class Star implements Celestial_Bodies {
  float s, theta, xpos, ypos;
  int num;
  color c;

  public Star(float x, float y) {
    xpos = x;
    ypos = y;
  }
  
  void display() {
    fill(getColor());
    ellipse(xpos, ypos, 10, 10);
  }
  
  void twinkle() {
    
    
  }
  
  
  @Override
  public color getColor() {
    c = color(255); //white
    return c;
  }
}