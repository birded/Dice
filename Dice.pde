//visuals

int sum = 0;
int highRoll = 0;
int lowRoll = 1000;

void setup()
{
	size(500,500);
	noLoop();
	rectMode(CENTER);
	noStroke();
}
void draw()
{
	background(61,104,59);
	for(int i = 40; i < 500; i +=60){
		for(int j = 50; j < 300 ; j += 60){
			Die bob = new Die(i, j);
			bob.show();
			sum = sum + bob.roll ;


		}
	}


	if(sum > highRoll){
		highRoll = sum;
	}

	if(sum < lowRoll){
		lowRoll = sum;
	}

	textSize(26);
	textAlign(CENTER,CENTER);
	fill(255,255,255,50);
	rect(250,405,250,100);
	fill(255);
	text("Sum:" + sum, 250, 370);
	text("Highest roll: " + highRoll, 250, 400);
	text("Lowest roll: " + lowRoll , 250, 430);

}
void mousePressed()
{
	sum = 0;
	redraw();
	
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
		fill(255);
		rect(myX, myY, 50, 50, 5);

		fill(0);

		if(roll == 1)
		{
			fill(246,129,129);
			ellipse(myX, myY, 10, 10);
		}
		else if(roll == 2)
		{
			fill(231,189,129	);
			ellipse(myX+13, myY-10, 10, 10);
			ellipse(myX-13, myY+10, 10, 10);
		}
		else if(roll == 3)
		{
			fill(220,214,133);
			ellipse(myX, myY, 10, 10);
			ellipse(myX+13, myY-10, 10, 10);
			ellipse(myX-13, myY+10, 10, 10);
		}
		else if(roll == 4)
		{
			fill(158,220,133);
			ellipse(myX-13, myY-10, 10, 10);
			ellipse(myX+13, myY-10, 10, 10);
			ellipse(myX-13, myY+10, 10, 10);
			ellipse(myX+13, myY+10, 10, 10);
		}
		else if(roll == 5)
		{
			fill(133,191,220);
			ellipse(myX-13, myY-10, 10, 10);
			ellipse(myX+13, myY-10, 10, 10);
			ellipse(myX, myY, 10, 10);
			ellipse(myX-13, myY+10, 10, 10);
			ellipse(myX+13, myY+10, 10, 10);
		}
		else
		{
			for(int i = myX-13 ; i < (myX + 24) ; i = i+26) //row
			{
				for(int j = myY-13 ; j < (myY + 14) ; j = j+13) //col
				{
				fill(174,133,220);
				ellipse(i, j, 10, 10);
				}
			}

		}


	}
}
