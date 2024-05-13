class BigMacs
{
  
  int level = 1;
  int xPos, yPos;
  PImage burmgur;
  
  public BigMacs(int x, int y)
  {
    xPos = x;
    yPos = y;
  }
  
  void drawBigMac()
  {
    if( level == 1 )
    {
      burmgur = loadImage("burmgur.png");
    }
    
    if( level == 2 )
    {
      burmgur = loadImage("burmgur2.png");
    }
    
    if( level == 3 )
    {
      burmgur = loadImage("burmgur3.png");
    }
    
    if( level == 4 )
    {
      burmgur = loadImage("burmgur4.png");
    }
    
    if( level == 5 )
    {
      burmgur = loadImage("burmgur5.png");
    }
    
    if( level == 6 )
    {
      burmgur = loadImage("burmgur6.png");
    }
    
    if( level == 7 )
    {
      burmgur = loadImage("burmgur7.png");
    }
    
    if( level == 8 )
    {
      burmgur = loadImage("burmgurFinal.png");
    }
  }
  
}
