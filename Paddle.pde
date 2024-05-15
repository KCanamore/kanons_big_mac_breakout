class Paddle 
{
  
  float xPos;
  int yPos = 950;
  
  public Paddle()
  {
        
  }
  
  void drawPaddle()
  {
    xPos = mouseX;
    fill(random(255), random(255), random(255));
    rect(xPos, yPos, 300, 50, 10);
  }
}
