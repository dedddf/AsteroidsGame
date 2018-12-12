
class Asteroid extends Floater{
  
  protected int rotSpd;

  
  public Asteroid(){
   corners =6;
   int[] xB  ={-22, 14,10,23,12,-22};
   int[] yB  ={-16, -16,5,0,20,-18};
   xCorners = xB;
   yCorners = yB;
   myCenterX =(int)(Math.random()*width);
   myCenterY = (int)(Math.random()*height);
   myDirectionX= (int)(Math.random()*8)-3;
   myDirectionY = (int)(Math.random()*8)-3;
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
