public class Star implements Celestial_Bodies {
  float s, theta, xpos, ypos, r;
  color c;

  public Star(float x, float y) {
    xpos = x;
    ypos = y;
    r = random(0, 100);
  }
  
  void display() {
    fill(getColor());
    if (r > 40 && r < 50)  {
      twinkle();
    } else {
      ellipse(xpos, ypos, 10, 10);
    }
  }
  
  void twinkle() {
    fill(255,255,0);
    triangle(xpos, ypos, xpos +10, ypos +10, xpos -10, ypos +10);
    triangle(xpos, ypos + 15, xpos +10, ypos + 5 , xpos -10, ypos +5);  
    
  }
  
  
  @Override
  public color getColor() {
    c = color(255); //white
    return c;
  }
}