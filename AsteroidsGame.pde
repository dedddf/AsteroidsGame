//your variable declarations here
ArrayList <Asteroid> rob = new ArrayList();
ArrayList <Bullet> bill  = new ArrayList();
Spaceship tim;
Star bob[]= new Star[500];
protected int shipC = 0;

Bullet Bill;
  
  

public void setup() 
{
  background(0);
  size(1500,800);
 
  tim = new Spaceship();


  //Bill = new Bullet();
  tim = new Spaceship();

  for (int i =0; i< bob.length; i++)
  {
    bob[i] = new Star();
  }
  for (int i= 0; i<30; i++) {
    rob.add(new Asteroid());
  }
  //your code here
}
public void draw() 
{
  background(0);
  for (int i =0; i< bob.length; i++)
  {
    bob[i].show();
  }
  for (int i= 0; i<rob.size(); i++) {
    float distS= dist(tim.getX(), tim.getY(), rob.get(i).getX(), rob.get(i).getY());
    if (distS<10) {
      rob.remove(i);
      shipC++;
      break;
    }
    rob.get(i).move();
    rob.get(i).show();
  }

  for (int i =0; i< bill.size(); i++)
  {
    bill.get(i).show();
    bill.get(i).move();
  }
  for ( int b =  0; b< bill.size(); b++){
    for ( int i = 0; i <rob. size() ;i++ ){
     float  distZ = dist(bill.get(b).getX(), bill.get(b).getY(), rob.get(i).getX(), rob.get(i).getY());
     
     if (distZ<10) {
      rob.remove(i);
      bill.remove(b);
      break;
    }
      
      
    }
    
  }
  tim.show();
  tim.move();
  if (shipC==2) {
    tim.setColor(#0526fc);
  }

  if (shipC==3) {
    tim.setColor(#05fc47);
  }
  if (shipC==4) {
    tim.setColor(#fcf805);
  }
  if (shipC==5) {
    tim.setColor(#fc0505);
  }
  if (shipC==6) {
    tim.setColor(0);
    for(int i =0 ;i< rob.size(); i++){
      rob.remove(i);
    }
    for(int i =0 ;i< bill.size(); i++){
      bill.remove(i);
    }
  }
  
}

public void keyPressed() {

  if (key == 'a'||key == 'A') {
    tim.turn(-3);

  }
  if (key == 'd'||key == 'D') {

    tim.turn(3);
  }
  if (key == 'w'||key == 'W') {
    tim.accelerate(0.2);

  }
  if (key == 'r'||key == 'R') {

    tim.setX((int)(Math.random()*width));
    tim.setY((int)(Math.random()*height));
    tim.setDirectionX(0);
    tim.setDirectionY(0);
    tim.setPointDirection((int)(Math.random()*360));
     for (int i= 0; i<5; i++) {
    rob.add(new Asteroid());
  }
    for (int i =0; i< bob.length; i++) {

      bob[i] = new Star();
    }
  }
  if (key == 'q'||key == 'Q') {
    tim.turn(-3);
    tim.accelerate(0.2);

  }
  if (key == 'e'||key == 'E') {
    tim.turn(3);
    tim.accelerate(0.2);
    
  }

  if (key == ' ') {

    bill.add(new Bullet(tim));

    
  }

 
  
}
