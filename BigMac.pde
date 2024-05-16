class BigMac
{
  
  int level = 1;
  int xPos, yPos;
  
  public BigMac(int x, int y)
  {
    xPos = x;
    yPos = y;
  }
  
  void drawBigMac(PImage p)
  {
   image(p, xPos, yPos); 
  }
  
  PImage determineBigMac(int l)//FIX IT
  {
    level = l;
    if( level == 1 )
    {
      return burmgur1;
    }
    
    if( level == 2 )
    {
      return burmgur1;
    }
    
    if( level == 3 )
    {
      return burmgur1;
    }
    
    if( level == 4 )
    {
      return burmgur1;
    }
    
    if( level == 5 )
    {
      return burmgur1;
    }
    
    if( level == 6 )
    {
      return burmgur1;
    }
    
    if( level == 7 )
    {
      return burmgur1;
    }
    
    if( level == 8 )
    {
      return burmgur1;
    }
    
    return burmgur1;
  }
  
}
