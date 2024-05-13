class Fish
{
  
  float xPos, yPos, xSpd, ySpd;
  PImage fish;
  
  public Fish()
  {
    
    xPos = width/2;
    yPos = height/2;
    fish = loadImage("Fish.png");
    fish.resize(50, 0);
    
  }
  
  void moveAndDraw()
  {
    image(fish, xPos, yPos);
    
    xPos += xSpd;
    yPos += ySpd;
  }
  
  
}
