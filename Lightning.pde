void setup()
{
  size(500,500);
  background(0,0,0);
  //background(131, 156, 173);
}
void draw()
{
	fill(131,156,173);
	noStroke();
	rect(0,0,175,300);
	rect(325,0,175,300);

	bezier(175, 300, 225, 275, 240,150, 200,100);
}
void mousePressed()
{

}

