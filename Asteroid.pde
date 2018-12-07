class Asteroid extends Floater{
  
  protected int rotSpd;
  
  public Asteroid(){
   corners =3;
   xCorners = new int [corners];
   yCorners = new int [corners];
   xCorners[0] = -8;
   yCorners[0] = -8;
   xCorners[1] = 16;
   yCorners[1]= 0;
   xCorners[2] = -8;
   yCorners[2] = 8;
   myCenterX =(int)(Math.random()*500);
   myCenterY = (int)(Math.random()*500);
   myDirectionX= (int)(Math.random()*11)-5;
   myDirectionY = (int)(Math.random()*11)-5;
   myPointDirection=0;
   myColor =#5e0507;
   rotSpd=((int)(Math.random()*11)-6);
  }

  public void setX(int b) {
    myCenterX = b;
  }
  public int getX() {
    return (int)myCenterX;
  }
  public void setY(int b) {
    myCenterY = b;
  }
  public int getY() {
    return (int)myCenterY;
  }
  public void setDirectionX(double x) {  
    myDirectionX = x;
  }
  public double getDirectionX(){
    return myDirectionX;
  }
   public void setDirectionY(double y) {  
    myDirectionY = y;
  }
  public double getDirectionY(){
    return myDirectionY;
  }
  public void setPointDirection(int degrees){
    myPointDirection = degrees;
  }
  public double getPointDirection(){
    return myPointDirection;
  }
  public void move(){
    if(myDirectionX == 0){
      myDirectionX++;
    }
    if(rotSpd==0){
      rotSpd++;
    }
    turn(rotSpd);
    super.move();
    
  }
  
  
  
  
  
  
  
  
}
