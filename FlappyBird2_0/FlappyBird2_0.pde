float ballX = 100;
float ballY = 250;
float birdYVelocity = 1;
float gravity = 0.5;
float pipe = 300;
float pipe2 = 300;
float h = 100;
float h2 = -100;

void setup() {
  size(800, 800);
} 

void draw() {
  background(0, 100, 0);
  ellipse(ballX, ballY, 50, 50);
  fill(0, 0, 100);
  ballY = ballY + birdYVelocity;
  birdYVelocity = birdYVelocity + gravity;
  if (pipe < -100 || pipe2 < -100) {œ
    //random2 = 0;
    pipe = 800;
    //random = 700 + random(300, 600);
   pipe2 = 800;
    h2 = (float) random(-100, -300);
    h = (float) random(100, 300);
  }


  //bottom
  rect(pipe, 0, 100, h);
  //top 
  rect(pipe2, 800, 100, h2);
  fill(100, 0, 0);
  pipe = pipe - 5;
  pipe2 = pipe2 - 5;

  intersects(ballX, ballY, pipe, 800 - abs(h2), abs(h2), 100);
  intersects(ballX, ballY, pipe2, 0, h, 100); 
  println("pipe" + pipe);
  println("pipe2" + pipe2);
}
void mousePressed() {
  birdYVelocity = -10;
}

boolean intersects(float birdX, float birdY, float paddleX, float paddleY, float paddleHeight, float paddleLength) {
  if (birdY > paddleY && birdY < paddleY + paddleHeight && birdX > paddleX && birdX < paddleX + paddleLength) {
    println(paddleY);
    background (100, 0, 0);
    exit();
    return true;
  } else {
    return false;
  }
}