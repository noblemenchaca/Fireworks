class Ball {

  float xPos;
  float yPos;
  float xVel;
  float yVel;  
  float diam;
  int
    fillR,
    fillG,
    fillB,
    fillA;

  
  Ball(float xP, float yP, float xV, float yV, float d) {
   xPos = xP;
   yPos = yP;
   xVel = xV;
   yVel = yV;
   diam = d; 
   fillR = int(random(190,255));
   fillG = int(random(190,255));
   fillB = int(random(190,255));
   fillA = int(random(125,500));
}

  void drawMe() {
    ellipse(xPos, yPos, diam, diam );
    fill(fillR, fillG, fillB, fillA);
  }

  void move() {
    xPos += xVel;
    yPos += yVel;
  }
}
