PImage backgroundImage;
import ddf.minim.*;
Minim minim;
AudioSample sound;
int score = 0;
int y = 50;
int x = (int) random(440)+30;
void setup(){
  backgroundImage = loadImage("image.jpg");
  minim = new Minim (this);
  sound = minim.loadSample("pong.wav");
  size(500, 500);
}
void draw(){
    if(score > 19){
      background(100,0,0);
      textSize(46); 
      text("You win!", 150, 250);
    }
    else{
    image(backgroundImage, 0, 0, 500, 500);
    fill(0,0,0);
    textSize(18);
   text("This is a rain game. The object of the game is to move\n the "
   + "bucket to catch the raindrop \n completly inside the bucket, 20 times. "
   + "Move the bucket \n with your mouse. Good luck!", 0, 20);
  y = y + 5;
  fill(0, 0, 225);
  ellipse(x, y, 60, 60);
  noStroke();
  if(y >= 450){
    y = 50;
    checkCatch(x);
    x = (int) random(440)+30;
  }
    fill(200,200,200);
    rect (mouseX, 450, 100, 50);
    fill(255,255,255);
    textSize(16);
    text("Score: " + score, 20, 20);
    }
}
void checkCatch (int x){
   if(x > mouseX && x < mouseX + 100){
    score++;
 sound.trigger();  
 }
    else if(score > 0){
      score --;
    }
}
