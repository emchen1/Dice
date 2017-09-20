void setup()
{
  size(500, 500);
  noLoop();
}
void draw()
{
  background(0,125,155);
  int total= 0;
  for (int y=15; y< 425; y= y+70)
  {
    for (int x = 15; x<450; x=x+70)
    {
      Die bob = new Die(x, y);
      bob.show();
      total = total+bob.numDots;
    }
  }
    text("Total:"+total, 25, 475);
}
void mousePressed()
{
  redraw();
}
class Die
{ 
  int myX, myY, numDots;
  Die(int x, int y)
  {
    myX=x;
    myY=y;
    numDots=(int)(Math.random()*6 +1);
  }
  void roll()
  {
    
  }
  void show()
  {
    fill(255);
    rect(myX, myY, 50, 50, 10);
    if (numDots == 1)
    {
      fill(0);
      ellipse(myX+25, myY+25, 10, 10);
    } else if (numDots==2)
    {
      fill(0);
      ellipse(myX+15, myY+25, 10, 10);
      ellipse(myX+35, myY+25, 10, 10);
    } else if (numDots==3)
    {
      fill(0);
      ellipse(myX+10, myY+25, 10, 10);
      ellipse(myX+25, myY+25, 10, 10);
      ellipse(myX+40, myY+25, 10, 10);
    } else if (numDots==4)
    {
      fill(0);
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+10, myY+40, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
    } else if (numDots==5)
    {
      fill(0);
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+10, myY+40, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
      ellipse(myX+25, myY+25, 10, 10);
    } else if (numDots==6)
    {
      fill(0);
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+10, myY+40, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
      ellipse(myX+10, myY+25, 10, 10);
      ellipse(myX+40, myY+25, 10, 10);
    }
    textSize(50);

  }
}