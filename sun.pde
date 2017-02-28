public class Sun implements Celestial_Bodies {
  float xpos, ypos, speed, theta;
  color c;
  int timer;

  public Sun() {
    xpos = 0;
    ypos = 450;
    c = getColor();
    theta = 0.0;
    timer = 0;
  }
  
  void display() {
    fill(getColor());
    stroke(getColor());
    ellipse(xpos, ypos, 100, 100);
    strokeWeight(2);
    //rotate(PI/2);
    rays();
    //move();
  }
  
  public void rays() {
    if (timer > 200) {
      line(xpos, ypos - 80, xpos, ypos + 80); //vertical
      line(xpos - 80, ypos, xpos + 80, ypos); //horizontal
      line(xpos - 60, ypos - 60, xpos + 60, ypos + 60); // /
      line(xpos - 60, ypos + 60, xpos + 60, ypos - 60); // \
    } else {
      line(xpos + 10, ypos - 80, xpos - 10, ypos + 80); //vertical
      line(xpos - 80, ypos + 10, xpos + 80, ypos - 10); //horizontal
      line(xpos - 50, ypos - 50, xpos + 70, ypos + 70); // /
      line(xpos - 70, ypos + 70, xpos + 50, ypos - 50); // \
    }
    timer++;
    if (timer == 400) {
      timer = 0;
    }
  }
  
  //updates the x, y values and adjusts bightness of the scene
  public void move() {
      theta += 0.0025;
      xpos = xpos + sin(theta);
      ypos = ypos - cos(theta);
  }
  
  @Override
  public color getColor() {
    c = color(245, 176, 65); //yellow
    return c;
  }
  
  public float getYpos() {
    return ypos;
  }
  
}