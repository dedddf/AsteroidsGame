class Spaceship extends Floater  

 /*protected int myColor;   
  protected double myCenterX, myCenterY; //holds center coordinates   
  protected double myDirectionX, myDirectionY; //holds x and y coordinates of the vector for direction of travel   
  protected double myPointDirection;*/
{ 
 public Spaceship(){
   corners =3;
   xCorners = new int [corners];
   yCorners = new int [corners];
   xCorners[0] = -8;
   yCorners[0] = -8;
   xCorners[1] = 16;
   yCorners[1]= 0;
   xCorners[2] = -8;
   yCorners[2] = 8;
   myCenterX = 100;
   myCenterY = 100;
   myDirectionX= 0;
   myDirectionY = 0;
   myPointDirection=0;
   myColor = 255;
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
  /*
  abstract public void setDirectionX(double x);   
   abstract public double getDirectionX();   
   abstract public void setDirectionY(double y);   
   abstract public double getDirectionY();   
   abstract public void setPointDirection(int degrees);   
   abstract public double getPointDirection();*/
}
