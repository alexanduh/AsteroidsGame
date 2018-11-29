class Bullet extends Floater {
int myTimer;
	public Bullet(Spaceship ship) {
    	myColor = color(255,0,0);
    	myCenterX = ship.getX();
    	myCenterY = ship.getY();
    	myPointDirection = ship.getPointDirection();
    	double dRadians = myPointDirection*(Math.PI/180);
    	myDirectionX = 5*Math.cos(dRadians) + ship.getDirectionX();
    	myDirectionY = 5*Math.sin(dRadians) + ship.getDirectionY();
    	myTimer = 50;
	}
	public void show() {
		fill(myColor);
		stroke(myColor);
		ellipse((int)myCenterX,(int)myCenterY, 5, 5);
		myTimer--;	
	}
	public void setX(int x) {myCenterX = x;}  
	public int getX() {return (int)myCenterX;}   
	public void setY(int y) {myCenterY = y;}   
	public int getY() {return (int)myCenterY;}   
	public void setDirectionX(double x) {myDirectionX = x;}
	public double getDirectionX() {return myDirectionX;}   
	public void setDirectionY(double y) {myDirectionY = y;}   
	public double getDirectionY() {return myDirectionY;}   
	public void setPointDirection(int degrees) {myPointDirection = degrees;}
 	public double getPointDirection() {return myPointDirection;}
 	public int getTimer() {return myTimer;}
}