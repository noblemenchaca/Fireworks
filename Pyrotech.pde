import ddf.minim.*;

Minim minim;
AudioPlayer player;
AudioSample pop;

final int numPointBalls = 50;
Ball[] backBalls;
Ball[] balls;
PImage bg;

void setup() {
  minim = new Minim(this);
  pop = minim.loadSample("pop.mp3", 512);
  bg = loadImage("nightSky.jpg");
  size(2240, 1493);
  noStroke();
  smooth();
  balls = new Ball[numPointBalls];
  int c;
  for (c = 0; c < numPointBalls; c++) {
    balls[c] = new Ball(-100, -100, 1, 1, 50);
  }
}

void draw() {
  background(bg);
  int i;
  for (i = 0; i < numPointBalls; i++) {
    balls[i].drawMe();
    balls[i].move();
  }
}
void mousePressed() {
  background(-1);
  pop.trigger();
  int c;
  for (c = 0; c < numPointBalls; c++) {
    float diameter = random(15,30);
    float xVel = random(-8,8); //xVel
    float yVel = random(-8,8);  //yVel

    balls[c] = new Ball(mouseX, mouseY, xVel, yVel, diameter);
  }
}

