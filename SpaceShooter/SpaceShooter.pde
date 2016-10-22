SpaceShip ship = new SpaceShip(100, 100);

ArrayList<Bullet> bullets = new ArrayList();
void setup() {
  size(500, 800);
}

void draw() {
  background(0, 0, 0);
  ship.display();
  ship.StayonCanvas();
}

void keyPressed()
{
  if (key == CODED) {
    if (keyCode == RIGHT)
    {
      ship.SetShipx(ship.GetShipx() + 5);
    } else if (keyCode == LEFT)
    {
      ship.SetShipx(ship.GetShipx() - 5);
    }
  }
}


class SpaceShip {
  private int shipx, shipy;
  SpaceShip(int shipx, int shipy) {
    this.shipx = shipx;
    this.shipy = shipy;
  }

  void SetShipx(int shipx1) {
    shipx = shipx1;
  }
  void SetShipy(int shipy1) {
    shipy = shipy1;
  }
  int GetShipx() {
    return shipx;
  }
  int GetShipy() {
    return shipy;
  }

  void display() {
    fill(0, 255, 0);
    rect(shipx, shipy, 50, 50);
  }

  void StayonCanvas() {
    ship.GetShipy();
    if (ship.GetShipx() > 500 || ship.GetShipx() < 0 || ship.GetShipy() > 800 || ship.GetShipy() < 0) {
      ship.SetShipx(225);
      ship.SetShipy(375);
    }
  }
}

class Bullet {
  private int bulletx, bullety;
  
  Bullet(int bulletx, int bullety) {
    this.bulletx = bulletx;
    this.bullety = bullety;
  }
  
  void SetBulletx(int bulletx1) {
    bulletx = bulletx1;
  }
  void SetBullety(int bullety1) {
    bullety = bullety1;
  }
  int GetBulletx() {
    return bulletx;
  }
  int GetBullety() {
    return bullety;
  }
  
  void move(){
   bullety ++; 
  }
  
  void display(){
     stroke(255);
    point(bulletx,bullety);
  }

}