float ballX = 100;
float ballY = 250;
float birdYVelocity = 1;
float gravity = 0.5;
float pipe = 300;
float random = 0;
float pipe2 = 300;
float random2 = 800;
float h = 100;
float h2 = 100;

void setup() {
  size(800, 800);
} 

void draw() {
  background(0, 100, 0);
  ellipse(ballX, ballY, 50, 50);
  fill(0, 0, 100);
  ballY = ballY + birdYVelocity;
  birdYVelocity = birdYVelocity + gravity;
  if (pipe < -100) {
    //random2 = 0;
    //println("random: " + random);
    pipe = 800;
    //random = 700 + random(300, 600);
    //println("random2: " + random2);
   pipe2 = 800;
    h2 = (float) random(100, 500);
    h = (float) random(100, 500);
  }


  //bottom
  rect(pipe, random, 100, h);
  //top 
  rect(pipe2, random2, 100, h);
  fill(100, 0, 0);
  pipe = pipe - 5;
  pipe2 = pipe2 - 5;

  intersects(ballX, ballY, pipe, random, 100);
  intersects(ballX, ballY, pipe2, random2, 100);
}
void mousePressed() {
  birdYVelocity = -10;
}

boolean intersects(float birdX, float birdY, float paddleX, float paddleY, float paddleLength) {
  if (birdY > paddleY && birdY < paddleY + 100 && birdX > paddleX && birdX < paddleX + paddleLength) {
    println(paddleY);
    background (100, 0, 0);
    exit();
    return true;
  } else {
    return false;
  }
}

