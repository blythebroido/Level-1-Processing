 float ballX = 100;
 float ballY = 250;
 float birdYVelocity = 1;
 float gravity = 0.5;
 float pipe = 300;
 float random = 300;
 float pipe2 = 300;
 float random2 = 300;
 
 void setup(){
size(800,800);
 } 
 
 void draw(){
background(0,100,0);
ellipse(ballX,ballY,50,50);
fill(0,0,100);
ballY = ballY + birdYVelocity;
birdYVelocity = birdYVelocity + gravity;
rect(pipe, random, 100, 400);
rect(pipe2, random2, 100, 400);
fill(100, 0, 0);
pipe = pipe - 5;
pipe2 = pipe2 - 5;
intersects(ballX, ballY, pipe, random, 100);
intersects(ballX, ballY, pipe2, random2, 100);
if(pipe < -100){
  random = (float) random (100,300);
  pipe = 800;
  random = (float) random (100,300);
 pipe2 = 800; 
}

 }
 
 void mousePressed(){
   birdYVelocity = -10;
 }
 
 boolean intersects(float birdX, float birdY, float paddleX, float paddleY, float paddleLength) {
if (birdY > paddleY - 4 && birdX > paddleX && birdX < paddleX + paddleLength){
background (100, 0, 0);
exit();
return true;
 }else{
return false;
}
 }

