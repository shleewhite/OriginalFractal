public void setup()
{
  size(500, 500);
  noLoop();
}
public void draw()
{
  background(0);
  stroke(0);
  strokeWeight(0.5);
  myFractal(50, 50, 20);
  myFractal(150, 150, 150);
  myFractal(250, 250, 150);
  myFractal(350, 350, 150);
  myFractal(450, 450, 150);
}
public void myFractal(int x, int y, int siz)
{
   rect(x - siz/2, y + siz, siz/2, siz/2);//lower left
   rect(x + siz, y - siz/2, siz/2, siz/2); //upper right
   rect(x + siz, y + siz, siz/2, siz/2); //lower right
   rect(x - siz/2, y - siz/2, siz/2, siz/2); //upper left
  if (siz > 10)
  {
    myFractal(x - siz/2, y + siz, siz/2);
    myFractal(x + siz, y - siz/2, siz/2);
    myFractal(x + siz, y + siz, siz/2);
    myFractal(x - siz/2, y - siz/2, siz/2);
  }
 
}
