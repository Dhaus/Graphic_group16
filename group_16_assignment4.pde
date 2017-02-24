Sun the_sun;
Moon the_moon;
void setup() { 
  noFill();
  size(800, 800);
  the_sun = new Sun();
  the_moon = new Moon();
}

//comment

void draw() {
  //sky
  fill(212, 230, 241); //light blue
  noStroke();
  rect(0, 0, 800, 500);
  //sun 
  the_sun.display();
  the_sun.move();
  the_moon.display();
  the_moon.move();
  backdrop();
  
  
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
  bezier(550, 280,550,300,450,310,450,310);
  bezier(550, 280, 550, 250, 450, 250, 450, 270);
  bezier(550, 280, 550, 250, 480, 200, 460, 200);
  bezier(550, 280, 550, 250, 570, 200, 580, 200);
  bezier(550, 280, 550, 250, 620, 240, 640, 260);
  bezier(550, 280, 550, 250, 640, 300, 635, 310);

}