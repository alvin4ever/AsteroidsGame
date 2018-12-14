class Star //note that this class does NOT extend Floater
{
 private double myX, myY; 
 public Star()
 {
   myX = (int)(Math.random()*750);
   myY = (int)(Math.random()*750);
 }
 
  public void show () 
  {             
  stroke(0);
  fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  ellipse((float)myX,(float)myY,7,7);  
  }
}
