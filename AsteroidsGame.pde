Spaceship ship = new Spaceship();
Asteroid bob = new Asteroid();
Star[] galaxy = new Star[100];
public void setup() 
{
  background(0);
  size(500, 500);
  for(int i = 0; i < galaxy.length; i++) {
  	galaxy[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i < galaxy.length; i++) {
  	fill(255);
  	stroke(255);
  	galaxy[i].show();
  }
/*  ship.move();
  ship.show();*/
  bob.move();
  bob.show();

}
public void keyPressed() {
	if(key == CODED) {
		if(keyCode == UP) {
			ship.accelerate(0.3);
		}
		if(keyCode == LEFT) {
			ship.turn(-20);
		}
		if(keyCode == RIGHT) {
			ship.turn(20);
		}
	}
	if(key == 'x') {
		ship.hyperspace();
	}
}

