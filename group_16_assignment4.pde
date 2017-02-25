Sun the_sun;
Moon the_moon;
Shark the_shark;

int s, r, g, b;
void setup() { 
  noFill();
  size(800, 800);
  the_sun = new Sun();
  the_moon = new Moon();
  the_shark = new Shark();
  s = 0;
  r = 212;
  g =230;
  b = 241;
}

//comment

void draw() {
  //sun 
  noStroke();
  daylightControl();
  rect(0, 0, 800, 500);
  the_sun.display();
  the_sun.move();
  the_moon.display();
  the_moon.move();
  backdrop();
  the_shark.move();
}

public void backdrop() {
  //water
  fill(31, 97, 141); //dark blue
  noStroke();
  rect(0, 500, 800, 300);

  //island
  fill(120, 66, 18); //dark brown
  stroke(120, 66, 18);
  strokeWeight(1);
  arc(550, 520, 250, 100, PI, 2*PI, OPEN);

  //tree trunk
  noFill();
  stroke(175, 96, 26); //light brown
  strokeWeight(20);
  bezier(550, 280, 550, 300, 600, 500, 500, 500);

  //tree branches
  stroke(30, 132, 73); //green
  strokeWeight(2);
  fill(39, 174, 96);
  bezier(550, 280, 550, 300, 450, 310, 450, 310);
  bezier(550, 280, 550, 250, 450, 250, 450, 270);
  bezier(550, 280, 550, 250, 480, 200, 460, 200);
  bezier(550, 280, 550, 250, 570, 200, 580, 200);
  bezier(550, 280, 550, 250, 620, 240, 640, 260);
  bezier(550, 280, 550, 250, 640, 300, 635, 310);
}

public void daylightControl() {
  if (the_sun.getYpos() < 400) { //it's daytime
    fill(r, g, b);
    if (r < 212) { //
      r += 1;
      g += 1;
      b += 1;
    }
  } else { //it's nighttime
    if (r != 0) { //fade to black
      r -= 1;
      g -= 1;
      b -= 1;
    }
    fill(r, g, b);
  }
}