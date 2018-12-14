class Bullet extends Floater{
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
 
 public Bullet(Spaceship Bob){
  setX(Bob.getX());
  setY(Bob.getY());
  myPointDirection = Bob.getPointDirection();
  double dRadians = myPointDirection*(Math.PI/180);
  myDirectionX = 5*Math.cos(dRadians) + Bob.getDirectionX();
  myDirectionY = 5*Math.sin(dRadians) + Bob.getDirectionY();
}

public void show(){
  fill(0,255,0);
  noStroke();
  ellipse((int)myCenterX,(int)myCenterY,10,5);

}
  
  public void move ()  
  {      
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;    
 
}
}
