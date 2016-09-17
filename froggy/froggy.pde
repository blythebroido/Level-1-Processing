int frogx = 200;
int frogy = 400;
int carx = 405;
int cary = 300;
int carspeed = 2;
void setup() {
  size(400, 400);
}

void draw() {
  background(0, 0, 0); 
  fill(0, 100, 0);
  ellipse(frogx, frogy, 50, 50);
  if (frogx > 400 || frogx < 0 || frogy > 400 || frogy < 0) {
    frogx = 150;
    frogy = 300;
  }
  car();
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP)
    {
      frogy = frogy - 75;
      //Frog Y position goes up
    } else if (keyCode == DOWN)
    {
      frogy = frogy + 75;
      //Frog Y position goes down
    } else if (keyCode == RIGHT)
    {
      frogx = frogx + 75;
      //Frog X position goes right
    } else if (keyCode == LEFT)
    {
      frogx = frogx - 75;
      //Frog X position goes left
    }
  }
}

void car() {
  fill(100, 100, 100);
  rect(carx, cary, 100, 50);
  carx = carx + carspeed;
  if (carx > 400) {
    carspeed = -2;
  }
  if (carx < -100) {
    carspeed = 2;
  }
}

void carDisplay() 
{
  fill(0, 255, 0);
  rect(carx, cary, 100, 50);
}