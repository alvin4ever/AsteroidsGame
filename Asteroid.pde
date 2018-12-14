class Asteroid extends Floater  
{
  public Asteroid(){
  myColor = color (255,0,0);
  myCenterX = (int)(Math.random()*800);
  myCenterY = (int)(Math.random()*800);
  myDirectionX = (int)(Math.random() * 4) - 2;
  myDirectionY = (int)(Math.random() * 4) - 2;
  myPointDirection = 180;
  corners = 6;
  xCorners = new int [corners];
  yCorners = new int [corners];
  xCorners[0] = -25;
  yCorners[0] = -10;
  xCorners[1] = 10; 
  yCorners[1] = -10;
  xCorners[2] = -25; 
  yCorners[2] = 0;
  xCorners[3] = 5; 
  yCorners[3] = 10;
  xCorners[4] = -25;
  yCorners[4] = 10;
  xCorners[5] = -5;
  yCorners[5] = 0;
}

  private int myRotationSpeed;
{
  if (Math.random() <= .5)
  myRotationSpeed = 8;
  else
  myRotationSpeed = -8;
}
 
public void move()
{
  turn(myRotationSpeed);
  super.move();
}

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
}
