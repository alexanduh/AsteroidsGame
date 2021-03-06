class Asteroid extends Floater {
	int spin;
	public Asteroid() {
		spin = (int)(Math.random()*10-5);
    	corners = 6;
    	xCorners = new int[corners];
    	yCorners = new int[corners];
    	xCorners[0] = -6;
    	yCorners[0] = 3;
    	xCorners[1] = 0;
    	yCorners[1] = 3;
    	xCorners[2] = 6;
    	yCorners[2] = 6;
    	xCorners[3] = 6;
    	yCorners[3] = -6;
    	xCorners[4] = 0;
    	yCorners[4] = -6;
    	xCorners[5] = -6;
    	yCorners[5] = -3;
    	myColor = color(210,210, 210);
    	myCenterX = (int)(Math.random()*800);
    	myCenterY = (int)(Math.random()*600);
    	myDirectionX = Math.random()*2-1;
    	myDirectionY = Math.random()*2-1;
    	myPointDirection = (int)(Math.random()*360);
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

	public void move (){
		super.move();
		turn(spin);   
	}

	public void setRatio(int ratio) {
		for(int i = 0; i < corners; i++) {
			xCorners[i] = ratio*xCorners[i];
			yCorners[i] = ratio*yCorners[i];
		}
	}
}