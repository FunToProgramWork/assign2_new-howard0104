PImage bgImg;
PImage soilImg;
PImage lifeImg;
PImage soldierImg;
PImage cabbageImg;
PImage ghImg;
PImage titleImg;
PImage downImg;
PImage rightImg;
PImage liftImg;
int x =0;
int lightPos = 240+25;
int xPos=200, yPos=200;

int speed=10;


void setup() {
  size(640, 480, P2D);
  // Enter Your Setup Code Here
    // Enter Your Setup Code Here
   bgImg = loadImage("img/bg.jpg");
   soilImg = loadImage("img/soil.png");
   lifeImg= loadImage("img/life.png");
   soldierImg = loadImage("img/soldier.png");
   cabbageImg = loadImage("img/cabbage.png");
   ghImg=loadImage("img/groundhogIdle.png");
   titleImg=loadImage("img/title.jpg");
   downImg=loadImage("img/groundhogDown.png");
   rightImg=loadImage("img/groundhogRight.png");
   liftImg=loadImage("img/groundhogLeft.png");
}

void draw() {
  // Switch Game State
  image(bgImg,0,0);
  image(soilImg, 0,160);
  image(lifeImg,10,10);
  image(lifeImg,80,10);
  image(soldierImg, x, 160);
  image(cabbageImg,560,160);
  
  image(ghImg,xPos+120, yPos-120);
    // Game Start
   {x=x+5;
  if ( x > 640)
    x = -80;}
    
    if (keyPressed) {
    if (key == 'w') {
      yPos -= speed;
      
    }
    if (key == 's') {
      yPos += speed;
      
      image(downImg,xPos+120,yPos-120);
    }
    if (key == 'a') {
      xPos -= speed;
       image(liftImg,xPos+120,yPos-120);
    }
    if (key == 'd') {
      xPos += speed;
       image(rightImg,xPos+120,yPos-120);
    }
   
    
  }
  
    
    
    
  
 
    // Game Run

    // Game Lose
}

void keyPressed(){
}
////////
void keyReleased(){
}
