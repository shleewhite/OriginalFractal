public void setup()
{
  size(500, 500);
  noLoop();
}
public void draw()
{
  background(0);
  stroke(0, 0, 255);
  strokeWeight(0.75);
  pushMatrix();                           //second row center
  translate(width/2, height/2);
  rotate(-PI/4);
  myFractal(-75, -75, 150);
  popMatrix();
  pushMatrix();
  translate(872, 447);                 //second row far left
  rotate(-PI/4);
  myFractal(-150, -75, 150);
  popMatrix();
  pushMatrix();
  translate(82, height/2);               //second row far right
  rotate(-PI/4);
  myFractal(-5, -5, 150);
  popMatrix();
  pushMatrix();                        //first row far right
  translate(235, 0);
  rotate(-PI/4);
  myFractal(0, 0, 150);
  popMatrix();
  pushMatrix();                        //first row second from the right
  translate(93, -35);
  rotate(-PI/4);
  myFractal(-150, -100, 150);
  popMatrix();
  pushMatrix();                        //first row third from the right
  translate(width/2 + 160, 0);
  rotate(-PI/4);
  myFractal(-75, -75, 150);
  popMatrix();
  pushMatrix();                        //first row far left
  translate(width/2 + 480, 0);
  rotate(-PI/4);
  myFractal(-75, -75, 150);
  popMatrix();
  pushMatrix();                        //third row far right
  translate(-50, 350);
  rotate(-PI/4);
  myFractal(-500, 200, 150);
  popMatrix();
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
