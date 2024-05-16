class Fish
{
  
  float xPos, yPos, xSpd, ySpd;
  
  public Fish()
  {
   
  }
  
  void defineFish()
  {
    xPos = width/2;
    yPos = height/2;
  }
  
  void drawFish()
  {
    image(fish, xPos, yPos);
    
    imageMode(CENTER);
    
    int burmgur = bounce();
    if( burmgur > 0 )
    //remove that burmgur   FINISH THIS 
    {
      sfx[int(random(14))].play();
      moan.play();
      bigMacs.get(burmgur).level--;
    }
   
    
    xPos += xSpd;
    yPos += ySpd;
  }


  int bounce()
  {
    float xP, yP;
    float xS=100, yS=50;
    
    //Wall hits
    if( xPos < 0 )
      xSpd = -xSpd;
    if( xPos > width )
      xSpd = -xSpd;
    if( yPos < 0 )
      ySpd = -ySpd;
      
    
    //Ball hits
    for( int i = 0; i < bigMacs.size(); i++ )
    {
      xP = bigMacs.get(i).xPos;
      yP = bigMacs.get(i).yPos;
      //Vertical hits
      if( xPos < xP+xS/2 && xPos > xP-xS/2 )
      {
        //Top And Bottom
        if( yPos > yP-yS/2 && yPos < yP || yPos < yP+yS/2 && yPos > yP )
        {
          ySpd = -ySpd;
          return i;
        }
      }
      //Horizontal hits
      if( yPos < yP+yS*2 && yPos > yP-yS*2 )
      {
        //Left and right
        if( xPos > xP-xS/2 && xPos < xP && xPos < xP+yS/2 && xPos > xP )
        {
          ySpd = -ySpd;
          return i;
        }
      }
    }
   
    xP = p.xPos;
    yP = p.yPos;
    circle(xP,yP,50);
    circle(xP-150,yP,20);
    circle(xP+150,yP,20);
    //Paddle top
    if( yPos+25 > yP-25 && yPos < yP && xPos > xP - 150 && xPos < xP + 150)
    {
      yPos = yP-50;
     
      float speed = ( xPos - xP );
      xSpd = speed/15;
      ySpd = -ySpd;
      ySpd = -(10-abs(xSpd)/2);
    }
    return -1;
  }
}
