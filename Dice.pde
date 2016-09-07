//try highest and lowest roll
//button?
//visuals

int sum = 0;

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
	for(int i = 40; i < 500; i +=60){
		for(int j = 50; j < 300 ; j += 60){
			Die bob = new Die(i,j);
			bob.show();
			sum = sum + bob.roll ;
		}
	}

	fill(255);
	textSize(26);
	textAlign(CENTER,CENTER);
	text("Sum:" + sum, 250, 400);

}
void mousePressed()
{
	redraw();
	sum = 0;
}
class Die //models one single dice cube
{
	//variable declarations here
	int myX, myY, roll;

	Die(int x, int y)
	{
		//variable initializations here
		myX = x;
		myY = y;
		roll();

	}

	void roll()
	{
		roll = (int)(Math.random() * 6 + 1);
	}
	void show()
	{
		//your code here
		fill(255);
		rect(myX, myY, 50, 50, 5);

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
			for(int i = myX-13 ; i < (myX + 14) ; i = i+13) //row
			{
				for(int j = myY-13 ; j < (myY + 14) ; j = j+13) //col
				{
				ellipse(i, j, 10, 10);
				}
			}

		}


	}
}
