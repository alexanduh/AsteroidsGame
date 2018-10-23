Spaceship ship = new Spaceship();
public void setup() 
{
  background(0);
  size(500, 500);
}
public void draw() 
{
  ship.show();
}
public void keyPressed() {
	if(key == CODED) {
		if(keyCode == UP) {
			ship.accelerate(1.5);
		}
		else if(keyCode == LEFT) {

		}
		else if(keyCode == RIGHT) {
			
		}
	}
}

