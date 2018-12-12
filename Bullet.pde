


class Bullet extends Floater{
  
  
  public Bullet(Spaceship Bob){
    myCenterX = Bob.getX();
    myCenterY = Bob.getY();
    myPointDirection = Bob.getPointDirection();
    double dRadians =myPointDirection*(Math.PI/180);
    myDirectionX = 5 * Math.cos(dRadians) + Bob.getDirectionX();
    myDirectionY = 5 * Math.sin(dRadians) + Bob.getDirectionY();
    myColor=255;
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

  public void move() {
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;
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
  public void show(){
    ellipse((float)myCenterX,(float)myCenterY,3,3);
    super.show();
  }

}
  
  
  
  
  
