PImage DonaldTrump;
float a, x, y, horizontal, vertical;
void setup() {
  size(500, 600);
  frameRate(30);
  a = -100;
  x = random(0, 500);
  y = random(0, 500);
  DonaldTrump = loadImage("DJHead.png");
  DonaldTrump.loadPixels();
  DonaldTrump.updatePixels();
  horizontal = 5;
  vertical = 5;
}

void draw() {  
  background(102);
  fill(255,0,0);
  rect(0,500, 250, 100);
  fill(0,255,0);
  rect(250,500, 250, 100);
  
  fill(255);
  triangle(75, 525, 175, 525, 125, 575);
  triangle(325, 575, 425, 575, 375, 525);
  x = x + horizontal;
  y = y + vertical;

  a = constrain(a, -1000, 0);
  if (x > width){
    x = width;
    horizontal = -horizontal;
  }
  if (x < 0){
    x = 0;
    horizontal = -horizontal;
  }
  if (y > 500){
    y = 500;
    vertical = -vertical;
  }
  if (y < 0){
    y = 0;
    vertical = -vertical;
  }
  
  if (pmouseX <= 250 & pmouseY >= 500) {
    a = a+ 5;
    fill(255);
    imageMode(CENTER);
    image(DonaldTrump, x, y, a, a);

  }
  else if(pmouseX > 250 & pmouseY >= 500){
    fill(255);
    a = a - 5;
    imageMode(CENTER);
    image(DonaldTrump, x, y, a, a);
  }
  else {
    imageMode(CENTER);
    image(DonaldTrump, x, y, a, a);
  }

}

