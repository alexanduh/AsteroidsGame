Spaceship ship = new Spaceship();
ArrayList <Asteroid> field = new ArrayList <Asteroid>();
Star[] galaxy = new Star[100];
ArrayList <Bullet> bullets = new ArrayList <Bullet>();
boolean up,down,left,right;
public void setup() 
{
  background(0);
  size(800, 600);
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
	for(int i = 0; i < bullets.size(); i++) {
		bullets.get(i).show();
		if(bullets.get(i).getTimer() == 0) {
			bullets.remove(i);
			i--;
		} 
		else {
			bullets.get(i).move();
		}
	}
	for (int i = 0; i < field.size(); i++) {
		field.get(i).move();
		field.get(i).show();
		if(dist(field.get(i).getX(), field.get(i).getY(), ship.getX(), ship.getY()) <= 30) {
			field.remove(i);
		}
		for(int j = 0; j < bullets.size(); j++) {
			if(dist(field.get(i).getX(), field.get(i).getY(), bullets.get(j).getX(), bullets.get(j).getY()) <= 30) {
				bullets.remove(j);
				field.remove(i);
				break;	
			}
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
  if(key == 'f') {
  	bullets.add(new Bullet(ship));
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
