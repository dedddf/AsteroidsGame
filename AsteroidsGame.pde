//your variable declarations here
ArrayList <Asteroid> rob = new ArrayList();
Spaceship tim;
Star bob[]= new Star[500];
public void setup() 
{
  background(0);
  size(1000,1000);
  tim = new Spaceship();
 for (int i =0; i< bob.length; i++)
  {
    bob[i] = new Star();
  }
  for(int i= 0; i<20; i++){
    rob.add(new Asteroid());
  }
  //your code here
}
public void draw() 
{
  background(0);
  tim.show();
  tim.move();
  for (int i =0; i< bob.length; i++)
  {
    bob[i].show();

  }
  for(int i= 0; i<20; i++){
    rob.get(i).move();
    rob.get(i).show();
    
    
    
  }
}
public void keyPressed(){
  
 if(key == 'e'||key == 'e'){
   tim.turn(3);
 }
 if(key == 'q'||key == 'Q'){
    tim.turn(-3);
 }
 if(key == 'w'||key == 'W'){
 tim.accelerate(0.2);
 }
  if(key == 'r'||key == 'R'){
  tim.setX((int)(Math.random()*500));
  tim.setY((int)(Math.random()*500));
  tim.setDirectionX(0);
  tim.setDirectionY(0);
  tim.setPointDirection((int)(Math.random()*360));
for (int i =0; i< bob.length; i++)
  {
    bob[i] = new Star();
  }
 }
}
