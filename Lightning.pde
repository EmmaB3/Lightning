void setup()
{
  size(500,500);
  background(0,0,0);
  backdrop();
  
}

void draw()
{
}

void backdrop(){
	tree();
	fill(131,156,173);
	textSize(30);
	textAlign(CENTER);
	text("Click To Add Branches",250,450);

}

void tree(){
	fill(131,156,173);
	noStroke();
	rect(0,0,175,300);
	rect(325,0,175,300);
	bezier(175, 300, 225, 275, 240,150, 200,100);
	bezier(325,300,275,275,260,150,300,100);
	triangle(240, 150, 210, 75, 240, 75);
	triangle(260,150,290,75,260,75);
	triangle(175,300,175,75,210,75);
	triangle(325,300,325,75,290,75);
	rect(175,0,150,75);
	fill(0,0,0);
	arc(250,75,20,10,PI,TWO_PI);
}
 
void mousePressed()
{
  	stroke(0);
	strokeWeight((int)(Math.random()*5) + 1);
	int startX = 240 + (int)(Math.random()*21), startY = 150, endX = 1, endY = 1;
 	while ((endX > 0 || endX < 500) && endY > 0){
	    endX = startX + ((int)(Math.random()*40) - 20);
	    endY = startY - ((int)(Math.random()*10));
	    line(startX,startY,endX,endY);
	    startX = endX;
	    startY = endY;
	}
}
