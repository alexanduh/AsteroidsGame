Spaceship ship = new Spaceship();
Asteroid[] field = new Asteroid[5];
Star[] galaxy = new Star[100];
public void setup() 
{
  background(0);
  size(500, 500);
  for(int i = 0; i < galaxy.length; i++) {
  	galaxy[i] = new Star();
  }
  for(int i = 0; i < field.length; i++) {
  	field[i] = new Asteroid();
  	field[i].setRatio(4);
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
  for(int i = 0; i < field.length; i++) {
	  field[i].move();
	  field[i].show();
  }
  ship.move();
  ship.show();


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

