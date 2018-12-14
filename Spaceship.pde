class Spaceship extends Floater  

{ 
  protected int myX, myY;
  public void setX(int x){myCenterX = x;}  
  public int getX(){return (int)myCenterX;}
  public void setY(int y){myCenterY = y;}
  public int getY(){return (int)myCenterY;}
  public void setDirectionX(double x){myDirectionX = x;}
  public double getDirectionX(){return myDirectionX;}
  public void setDirectionY(double y){myDirectionY = y;}
  public double getDirectionY(){return myDirectionY;}
  public void setPointDirection(int degrees){myPointDirection = degrees;}
  public double getPointDirection(){return myPointDirection;}
   
public Spaceship(){
  myColor = color (50,255,50);
  corners = 5;
  xCorners = new int [corners];
  yCorners = new int [corners];
  xCorners[0] = -20; 
  yCorners[0] = -20;
  xCorners[1] = 15; 
  yCorners[1] = 0;
  xCorners[2] = -20; 
  yCorners[2] = 20;
  xCorners[3] = -5; 
  yCorners[3] = 0;
  xCorners[4] = 2;
  yCorners[4] = 8;
  }
}
