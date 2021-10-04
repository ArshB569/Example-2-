PImage crab, fish2, background, fish, fish3;
PVector p1, f1, f2, f3;
float speedX1, speedX2, fspeedX1, fspeedX2, cspeedX1, cspeedX2, f2speedX1, f2speedX2;

void setup() 
{
  size(1280, 720, P2D);
  background = loadImage("sea.jpg");
  fish = loadImage("fish.png");
  crab = loadImage("crab.png");
  fish2 = loadImage("fish2.png");
  fish3 = loadImage ("fish3.png");
  background.resize(1280,720);
  imageMode(CENTER);
  
  p1 = new PVector(width/2, height/2);
  f2 = new PVector(1100, 515);
  f1 = new PVector (200, 250); // X-axis - Y-axis
  f3 = new PVector (350, 400);
  fish2.resize(120,60); // size
  fish.resize(140,100);
  fish3.resize(130,80);
  
  
  speedX1 = 0.3;
  speedX2 = speedX1 * 0.5;
  
  fspeedX1 = 0.9;
  fspeedX2 = speedX1 * 0.5;
  
  cspeedX1 = 1;
  cspeedX2 = speedX1 * 0.5;
  
  f2speedX1 = 1;
  f2speedX1 = speedX1 * 3;
  
  
}

void draw() 
{
  background(0, 127, 255);
  noTint();
  image(background, p1.x, p1.y);
  
  noTint ();
  image( fish, f1.x, f1.y);
  image( fish2, f2.x, f2.y);
  image ( fish3, f3.x, f3.y);
  image ( crab, mouseX, mouseY, 110, 90 );
 
  f1.x += cspeedX1;
  f1.x += cspeedX2;
  
  f2.x -= fspeedX1;
  f2.x -= fspeedX2;
  
  f3.x -= f2speedX1;
  f3.x -= f2speedX2;
  
 
   if ( f1.x > (1280 + fish.width) )
  {
    f1.x = -300;
  }
  if ( f2.x > (1280 + fish2.width) )
  {
    f2.x = -300;
  }
   if ( f3.x > (1280 + fish3.width) )
  {
    f3.x = -300;
  }
  }
