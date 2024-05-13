void setup()
{
  
}

void draw()
{
  
}

void addRowOfBricks( int row ) //row is y index
{
  int yVal = 150+row*50;
 
  switch( int(random(10)) )
  {
    case 0:
    case 1: //============
      for( int i = 50; i < width; i+=100)
        bricks.add( new Brick( i, yVal ) );
      break;
    case 2: //= = = = = =
      for( int i = 50; i < width; i+=200)
        bricks.add( new Brick( i, yVal ) );
      break;
    case 3: // = = = = = =
      for( int i = 150; i < width; i+=200)
        bricks.add( new Brick( i, yVal ) );
      break;
    case 4: //===      ===
      for( int i = 50; i < width; i+=100)
        if( i < 300 || i > 900 )
          bricks.add( new Brick( i, yVal ) );
      break;
    case 5: //    ====    
      for( int i = 50; i < width; i+=100)
        if( i > 400 && i < 800 )
          bricks.add( new Brick( i, yVal ) );
      break;
    case 6: //==   ==   ==
      for( int i = 50; i < width; i+=100)
        if( i < 200 || i > 1000 || ( i > 400 && i < 700 ) )
          bricks.add( new Brick( i, yVal ) );
      break;
    case 7: //     33    
      bricks.add( new Brick( 550, yVal ) );
      bricks.add( new Brick( 550, yVal ) );
      bricks.add( new Brick( 550, yVal ) );
      bricks.add( new Brick( 650, yVal ) );
      bricks.add( new Brick( 650, yVal ) );
      bricks.add( new Brick( 650, yVal ) );
      break;
    case 8: //4          4
      bricks.add( new Brick( 50, yVal ) );
      bricks.add( new Brick( 50, yVal ) );
      bricks.add( new Brick( 50, yVal ) );
      bricks.add( new Brick( 50, yVal ) );
      bricks.add( new Brick( 1150, yVal ) );
      bricks.add( new Brick( 1150, yVal ) );
      bricks.add( new Brick( 1150, yVal ) );
      bricks.add( new Brick( 1150, yVal ) );
      break;
    case 9: //222222222222
      for( int i = 50; i < width; i+=100)
      {
        bricks.add( new Brick( i, yVal ) );
        bricks.add( new Brick( i, yVal ) );
        bricks.add( new Brick( i, yVal ) );
      }
      break;
  }
}
