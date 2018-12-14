Spaceship Bob = new Spaceship();
Star[] nightsky = new Star[200];
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
ArrayList <Bullet> Ray = new ArrayList <Bullet>();
 public void setup() 
{
  size(550,550);
  for (int i = 0; i < 10; i++)
  {
    rocks.add(new Asteroid());
  }
  
  for (int i = 0; i < nightsky.length; i++)
  {
    nightsky[i] = new Star();
  }
}
 public void draw()
{
  background(0);
  Bob.show();
  Bob.move();
 
  for (int i = 0; i < nightsky.length; i++)
  {
    nightsky[i].show();
  }
  
   for (int i = 0; i < rocks.size(); i++)
  {
   rocks.get(i).show();
   rocks.get(i).move();
   if(dist((float)(rocks.get(i).getX()), (float)(rocks.get(i).getY()), (float)(Bob.getX()), (float)(Bob.getY())) < 20)
   {
     rocks.remove(i);
   }
   }
    for (int i = 0; i < Ray.size(); i++) 
    { 
    Ray.get(i).show();
    Ray.get(i).move();
    }
   
    for(int i = 0; i < Ray.size(); i++){
    for(int j = 0; j < rocks.size(); j++){
    if(dist((float)(rocks.get(j).getX()),(float)(rocks.get(j).getY()), (float)(Ray.get(i).getX()),(float)(Ray.get(i).getY())) < 20){
    Ray.remove(i);
    rocks.remove(j);
    rocks.add(new Asteroid());
    break;
    }
  }  
 }
}
 public void keyPressed()
{
 if (key == 'h') //hyperspace
 {
   Bob.setX((int)(Math.random()*675));
   Bob.setY((int)(Math.random()*675));
   Bob.setDirectionX(0);
   Bob.setDirectionY(0);
   Bob.setPointDirection((int)(Math.random()*360));
 }
 
  if (key == 'a') //turn counter clockwise
 {
   Bob.turn(-13);
 }
 
   if (key == 'd') //turn clockwise
 {
   Bob.turn(13);
 }
 
    if (key == 'w') //turn clockwise
 {
   Bob.accelerate(0.5);
 }
 
     if (key == 's') //turn clockwise
 {
   Bob.accelerate(-0.5);
 }
 
      if (key == ' ') //turn clockwise
 {
   Ray.add(new Bullet(Bob));
 }
 
}
