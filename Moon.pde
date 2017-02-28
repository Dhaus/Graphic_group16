public class Moon implements Celestial_Bodies {
  float xpos, ypos, s, theta;
  int cycle;
  color c;

  public Moon() {
    xpos = 800;
    ypos = 450;
    c = getColor();
    theta = 0.0;
    cycle = 1;
    s = 0;
  }
  
  void display() {
    fill(getColor());
    noStroke();
    ellipse(xpos, ypos, 100, 100);
    if ((int)ypos == 400) {
      cycle++;
    }
    phase();
    //print((int)ypos + "|");
    //print(theta);
    strokeWeight(2);
  }
  
  void phase() {
    if (cycle % 2 == 0) {
      fill(0);
      arc(xpos, ypos, 100, 100, PI/2, (3*PI)/2);
    }  
  }
  
  
  void move() {
      theta += 0.0025;
      xpos = xpos - sin(theta);
      ypos = ypos + cos(theta);
  }
  
  
  @Override
  public color getColor() {
    c = color(234, 237, 238); //gray
    return c;
  }
}