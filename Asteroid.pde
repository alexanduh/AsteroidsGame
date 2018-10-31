class Asteroid extends Floater {
	int spin;
	public Asteroid() {
		spin = (int)(Math.random()*20-10);
    	corners = 6;
    	xCorners = new int[corners];
    	yCorners = new int[corners];
    	xCorners[0] = -18;
    	yCorners[0] = 9;
    	xCorners[1] = 0;
    	yCorners[1] = 9;
    	xCorners[2] = 18;
    	yCorners[2] = 18;
    	xCorners[3] = 18;
    	yCorners[3] = -18;
    	xCorners[4] = 0;
    	yCorners[4] = -18;
    	xCorners[5] = -18;
    	yCorners[5] = -9;
    	myColor = color(197, 197, 197);
    	myCenterX = (int)(Math.random()*500);
    	myCenterY = (int)(Math.random()*500);
    	myDirectionX = 0;
    	myDirectionY = 0;
    	myPointDirection = 0;
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
		myCenterX += myDirectionX;    
		myCenterY += myDirectionY;     
		if(myCenterX >width){     
			myCenterX = 0;    
		}    
		else if (myCenterX<0){     
			myCenterX = width;    
		}    
		if(myCenterY >height){    
			myCenterY = 0;    
		} 
		else if (myCenterY < 0){     
			myCenterY = height;    
		}
		this.turn(spin);   
	}   
}