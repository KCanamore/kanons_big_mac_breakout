boolean isGameOver = false;
boolean readyLaunch = true;

ArrayList<BigMac> bigMacs = new ArrayList<BigMac>();

PImage burmgur1;
PImage burmgur2;
PImage burmgur3;
PImage burmgur4;
PImage burmgur5;
PImage burmgur6;
PImage burmgur7;

PImage fish;

Paddle p = new Paddle();
Fish f = new Fish();
void setup()
{
  rectMode(CENTER);
  noCursor();
  fullScreen();
  for(BigMac b: bigMacs)
  {
    b.determineBigMac(1);
  }
  addRowOfBigMacs(int(random(9)));
  
  
  burmgur1 = loadImage("burmgur.png");
  burmgur2 = loadImage("burmgur2.png");
  burmgur3 = loadImage("burmgur3.png");
  burmgur4 = loadImage("burmgur4.png");
  burmgur5 = loadImage("burmgur5.png");
  burmgur6 = loadImage("burmgur6.png");
  burmgur7 = loadImage("burmgurFinal.png");
  
  fish = loadImage("Fish.png");
  
  burmgur1.resize(100, 50);
  burmgur2.resize(100, 50);
  burmgur3.resize(100, 50);
  burmgur4.resize(100, 50);
  burmgur5.resize(100, 50);
  burmgur6.resize(100, 50);
  burmgur7.resize(100, 50);

  fish.resize(75, 0);

  f.defineFish();

}

void draw()
{
  background(0);
  for(BigMac b: bigMacs)
  {
    b.drawBigMac(b.determineBigMac(1));
  }
  p.drawPaddle();
  f.drawFish();
  gameOver();
}



void addRowOfBigMacs( int row ) //row is y index
{
  int yVal = 150+row*50;
 
  switch( int(random(10)) )
  {
    case 0:
    case 1: //============
      for( int i = 50; i < width; i+=100)
        bigMacs.add( new BigMac( i, yVal ) );
      break;
    case 2: //= = = = = =
      for( int i = 50; i < width; i+=200)
        bigMacs.add( new BigMac( i, yVal ) );
      break;
    case 3: // = = = = = =
      for( int i = 150; i < width; i+=200)
        bigMacs.add( new BigMac( i, yVal ) );
      break;
    case 4: //===      ===
      for( int i = 50; i < width; i+=100)
        if( i < 300 || i > 900 )
          bigMacs.add( new BigMac( i, yVal ) );
      break;
    case 5: //    ====    
      for( int i = 50; i < width; i+=100)
        if( i > 400 && i < 800 )
          bigMacs.add( new BigMac( i, yVal ) );
      break;
    case 6: //==   ==   ==
      for( int i = 50; i < width; i+=100)
        if( i < 200 || i > 1000 || ( i > 400 && i < 700 ) )
          bigMacs.add( new BigMac( i, yVal ) );
      break;
    case 7: //     33    
      bigMacs.add( new BigMac( 550, yVal ) );
      bigMacs.add( new BigMac( 550, yVal ) );
      bigMacs.add( new BigMac( 550, yVal ) );
      bigMacs.add( new BigMac( 650, yVal ) );
      bigMacs.add( new BigMac( 650, yVal ) );
      bigMacs.add( new BigMac( 650, yVal ) );
      break;
    case 8: //4          4
      bigMacs.add( new BigMac( 50, yVal ) );
      bigMacs.add( new BigMac( 50, yVal ) );
      bigMacs.add( new BigMac( 50, yVal ) );
      bigMacs.add( new BigMac( 50, yVal ) );
      bigMacs.add( new BigMac( 1150, yVal ) );
      bigMacs.add( new BigMac( 1150, yVal ) );
      bigMacs.add( new BigMac( 1150, yVal ) );
      bigMacs.add( new BigMac( 1150, yVal ) );
      break;
    case 9: //222222222222
      for( int i = 50; i < width; i+=100)
      {
        bigMacs.add( new BigMac( i, yVal ) );
        bigMacs.add( new BigMac( i, yVal ) );
        bigMacs.add( new BigMac( i, yVal ) );
      }
      break;
  }
}

void gameOver()
{
  if( isGameOver == true )
  {
   fill(random(255), random(255), random(255));
   textSize(200);
   text("GAME OVER", width/2-500, height/2);
  }
}

void mousePressed()
{
  if( readyLaunch == true )
  {
    f.ySpd += 5;
    f.xSpd += random(-5, 5);
    readyLaunch = false;
  }
}
