public class Car {
  int carx;
  int cary;
  int carspeed;

  public Car(int carx, int cary, int carspeed) {
    this.carx = carx;
    this.cary = cary;
    this.carspeed = carspeed;
  }

  void carUpdate() {
    fill(100, 100, 100);
    rect(carx, cary, 50, 20);
    carx = carx + carspeed;
    if (carx > 400) {
      carspeed = carspeed * -1;
    }
    if (carx < -110) {
      carspeed = carspeed * -1;
    }
  }

  int getX() {
    return carx;
  }
  int getY() {
    return cary;
  }
  int getSize() {
    return carx;
  }
  void intersects(int frogy, int frogx) {
    if ((frogy >= getY() && frogy <= getY()+20) && (frogx >= getX() && frogx <= getX()+50)) {
      delay(1000);
      System.exit(0);
    }
  }
}

