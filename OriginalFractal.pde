

public void setup()
{
	size(500, 500);
	noLoop();
}
public void draw()
{
	background(0);
	stroke(100);
	strokeWeight(0.5);
	myFractal(50, 50, 150);
	myFractal(150, 150, 150);
	myFractal(250, 250, 150);
	myFractal(350, 350, 150);
	myFractal(450, 450, 150);
}
public void myFractal(int x, int y, int siz)
{
	if (siz > 10)
	{
		rect(x + siz, y + siz, siz/2, siz/2);
		rect(x + siz, y - siz/2, siz/2, siz/2);
		rect(x - siz/2, y + siz, siz/2, siz/2);
		rect(x - siz/2, y - siz/2, siz/2, siz/2);
		myFractal(x + siz, y + siz, siz/2);
		myFractal(x - siz, y + siz/2, siz/2);
		myFractal(x + siz/2, y - siz, siz/2);
		myFractal(x - siz/2, y - siz/2, siz/2);
	}
	else
	{
		rect(x + siz, y + siz, siz/2, siz/2);
		rect(x + siz, y - siz/2, siz/2, siz/2);
		rect(x - siz/2, y + siz, siz/2, siz/2);
		rect(x - siz/2, y - siz/2, siz/2, siz/2);
	}
}