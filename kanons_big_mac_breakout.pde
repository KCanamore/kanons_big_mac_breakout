import processing.sound.*;

boolean isGameOver = false;
boolean readyLaunch = true;

ArrayList<BigMac> bigMacs = new ArrayList<BigMac>();

SoundFile [] sfx = new SoundFile[14];
SoundFile moan;
SoundFile uranium;

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
  
  sfx[0] = new SoundFile(this, "munchin1.wav");
  sfx[1] = new SoundFile(this, "munchin2.wav");
  sfx[2] = new SoundFile(this, "munchin3.wav");
  sfx[3] = new SoundFile(this, "munchin4.wav");
  sfx[4] = new SoundFile(this, "munchin5.wav");
  sfx[5] = new SoundFile(this, "munchin6.wav");
  sfx[6] = new SoundFile(this, "munchin7.wav");
  sfx[7] = new SoundFile(this, "munchin8.wav");
  sfx[8] = new SoundFile(this, "munchin9.wav");
  sfx[9] = new SoundFile(this, "munchin10.wav");
  sfx[10] = new SoundFile(this, "munchin11.wav");
  sfx[11] = new SoundFile(this, "munchin12.wav");
  sfx[12] = new SoundFile(this, "munchin13.wav");
  sfx[13] = new SoundFile(this, "munchin14.wav");
  moan = new SoundFile(this, "background.wav");
  uranium = new SoundFile(this, "uranium.wav");
  
  addRowOfBigMacs(int(random(9)));
  addRowOfBigMacs(int(random(9)));
  addRowOfBigMacs(int(random(9)));
  addRowOfBigMacs(int(random(9)));
  addRowOfBigMacs(int(random(9)));
  addRowOfBigMacs(int(random(9)));
  addRowOfBigMacs(int(random(9)));
  addRowOfBigMacs(int(random(9)));
  addRowOfBigMacs(int(random(9)));
  addRowOfBigMacs(int(random(9)));
  addRowOfBigMacs(int(random(9)));
  addRowOfBigMacs(int(random(9)));
  addRowOfBigMacs(int(random(9)));
  addRowOfBigMacs(int(random(9)));
  addRowOfBigMacs(int(random(9)));
  addRowOfBigMacs(int(random(9)));
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
  
  if(f.yPos >= height)
  {
    uranium.play();
    isGameOver = true;
  }
  
  for(BigMac b: bigMacs)
  {
    b.drawBigMac(b.determineBigMac(b.level));
  }
  p.drawPaddle();
  f.drawFish();
  destroy();
  consolidateBigMacs();
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

void destroy()
{
 for(int i = 0; i < bigMacs.size(); i++)
 {
   if(bigMacs.get(i).level == 0)
   {
     bigMacs.remove(i);
   }
 }
}

void gameOver()
{
  if( isGameOver == true )
  {
   fill(random(255), random(255), random(255));
   textSize(200);
   text("GAME OVER", width/2-500, height/2);
   f.xPos = width/2;
   f.yPos = height/2;
   f.xSpd = 0;
   f.ySpd = 0;
   readyLaunch = true;
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
  
  if(isGameOver == true)
  {
    isGameOver = false;
  }
}

void consolidateBigMacs()
{
  for( int i = 0; i < bigMacs.size()-1; i++ )
  {
    for( int j = 0; j < bigMacs.size(); j++ )
    {
      if( j != i && bigMacs.get(i).xPos == bigMacs.get(j).xPos && bigMacs.get(i).yPos == bigMacs.get(j).yPos )
      {
        bigMacs.get(i).level += bigMacs.get(j).level;
        bigMacs.remove(j);
        if( bigMacs.size() <= i ) //   <- to fix an overflow chrash
          return;
      }
    }
  }
}
