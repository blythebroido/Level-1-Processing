int frogx = 200;
int frogy = 400;
Car car1;
Car car2;
Car car3;
Car car4;
Car car5;
void setup() {
  size(400, 400);
  car1 = new Car (405, 40, -7);

  car2 = new Car (-100, 340, 2);

  car3 = new Car (405, 290, -5);

  car4 = new Car (-100, 190, 3);

  car5 = new Car (403, 90, -4);
}

void draw() {
  background(0, 0, 0); 
  fill(0, 100, 0);
  ellipse(frogx, frogy, 20, 20);
  if (frogx > 400 || frogx < 0 || frogy > 400 || frogy < 0) {
    frogx = 200;
    frogy = 400;
  }
  car1.carUpdate();
  car2.carUpdate();
  car3.carUpdate();
  car4.carUpdate();
  car5.carUpdate();
  car1.intersects(frogy, frogx);
  car2.intersects(frogy, frogx);
  car3.intersects(frogy, frogx);
  car4.intersects(frogy, frogx);
  car5.intersects(frogy, frogx);
  
  if(frogy <= 0){
   text("You win!!", 200, 200); 
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP)
    {
      frogy = frogy - 50;
      //Frog Y position goes up
    } else if (keyCode == DOWN)
    {
      frogy = frogy + 50;
      //Frog Y position goes down
    } else if (keyCode == RIGHT)
    {
      frogx = frogx + 50;
      //Frog X position goes right
    } else if (keyCode == LEFT)
    {
      frogx = frogx - 50;
      //Frog X position goes left
    }
  }
}

