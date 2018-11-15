Spaceship ship = new Spaceship();
ArrayList <Asteroid> field = new ArrayList <Asteroid>();
Star[] galaxy = new Star[100];
boolean up,down,left,right;
public void setup() 
{
  background(0);
  size(500, 500);
  for (int i = 0; i < galaxy.length; i++) {
    galaxy[i] = new Star();
  }
  for (int i = 0; i < 5; i++) {
    field.add(new Asteroid());
    field.get(i).setRatio(3);
  }
}
public void draw() 
{

	background(0);
	for (int i = 0; i < galaxy.length; i++) {
		fill(255);
		stroke(255);
		galaxy[i].show();
	}
	for (int i = 0; i < field.size(); i++) {
		field.get(i).move();
		field.get(i).show();
		if(dist(field.get(i).getX(), field.get(i).getY(), ship.getX(), ship.getY()) <= 30) {
			field.remove(i);
		}
	}
	ship.move();
	ship.show();
	if(up) {
		ship.accelerate(0.1); 
	}

	if(down) {
		ship.accelerate(-0.1); 
	}

	if(left) {
		ship.turn(-5);
	}

	if(right) {
		ship.turn(5);
	}

}
public void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      up = true;// ship.accelerate(0.3); 
    }
    if(keyCode == DOWN) {
    	down = true;// ship.accelerate(-0.3);
    }
    if (keyCode == LEFT) {
      left = true;// ship.turn(-20);
    }
    if (keyCode == RIGHT) {
       right = true;// ship.turn(20);
    }
  }
  if (key == 'x') {
    ship.hyperspace();
  }
}

public void keyReleased() {
  if (key == CODED) {
    if (keyCode == UP) {
      up = false;// ship.accelerate(0.3); 
    }
    if(keyCode == DOWN) {
    	down = false;// ship.accelerate(-0.3);
    }
    if (keyCode == LEFT) {
      left = false;// ship.turn(-20);
    }
    if (keyCode == RIGHT) {
       right = false;// ship.turn(20);
    }
  }
}
