class Spaceship extends Floater  
{   
    public Spaceship() {
    	corners = 3;
    	xCorners[0] = -8;
    	yCorners[0] = 8;
    	xCorners[1] = -8;
    	yCorners[1] = -8;
    	xCorners[2] = 16;
    	yCorners[2] = 0;
    	myColor = rgb(0, 0, 255);
    	myCenterX = 0;
    	myCenterY = 0;
    	myDirectionX = 0;
    	myDirectionY = 0;
    	myPointDirection = 0;
    }
}
