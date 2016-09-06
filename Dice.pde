void setup()
{
	size(500,500);
	noLoop();
	rectMode(CENTER);
}
void draw()
{
	//your code here
	background(50);
	Die dice = new Die(250,250);
	dice.show();

}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int myX, myY;

	Die(int x, int y) //constructor
	{
		//variable initializations here
		myX = x;
		myY = y;

	}

	void roll()
	{
		//your code here
	}
	void show()
	{
		//your code here
		fill(255);
		rect(myX, myY, 50, 50, 5);

		int roll = (int)(Math.random() * 6);
		fill(0);

		if(roll == 1)
		{
			ellipse(myX, myY, 10, 10);
		}
		else if(roll == 2)
		{
			ellipse(myX+13, myY-10, 10, 10);
			ellipse(myX-13, myY+10, 10, 10);
		}
		else if(roll == 3)
		{
			ellipse(myX, myY, 10, 10);
			ellipse(myX+13, myY-10, 10, 10);
			ellipse(myX-13, myY+10, 10, 10);
		}
		else if(roll == 4)
		{
			ellipse(myX-13, myY-10, 10, 10);
			ellipse(myX+13, myY-10, 10, 10);
			ellipse(myX-13, myY+10, 10, 10);
			ellipse(myX+13, myY+10, 10, 10);
		}
		else if(roll == 5)
		{
			ellipse(myX-13, myY-10, 10, 10);
			ellipse(myX+13, myY-10, 10, 10);
			ellipse(myX, myY, 10, 10);
			ellipse(myX-13, myY+10, 10, 10);
			ellipse(myX+13, myY+10, 10, 10);
		}
		else
		{
			//try for loops
		}


	}
}
