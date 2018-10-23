class Spaceship extends Floater  
{   
    public Spaceship() {
    	corners = 3;
    	xCorners = new int[corners];
    	yCorners = new int[corners];
    	xCorners[0] = -8;
    	yCorners[0] = 8;
    	xCorners[1] = -8;
    	yCorners[1] = -8;
    	xCorners[2] = 16;
    	yCorners[2] = 0;
    	myColor = color(0, 0, 255);
    	myCenterX = 250;
    	myCenterY = 250;
    	myDirectionX = 0;
    	myDirectionY = 0;
    	myPointDirection = 0;
    }
	public void setX(int x) {
		myCenterX = x;
	}  
	public int getX() {
		return (int)myCenterX;
	}   
	public void setY(int y) {
		myCenterY = y;
	}   
	public int getY() {
		return (int)myCenterY;
	}   
	public void setDirectionX(double x) {
		myDirectionX = x;
	}
	public double getDirectionX() {
		return myDirectionX;
	}   
	public void setDirectionY(double y) {
		myDirectionY = y;
	}   
	public double getDirectionY() {
		return myDirectionY;
	}   
	public void setPointDirection(int degrees) {
		myPointDirection = degrees;
	}
 	public double getPointDirection() {
 		return myPointDirection;
 	}
 }
