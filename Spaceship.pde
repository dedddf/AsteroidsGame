class Spaceship extends Floater  

 /*protected int myColor;   
  protected double myCenterX, myCenterY; //holds center coordinates   
  protected double myDirectionX, myDirectionY; //holds x and y coordinates of the vector for direction of travel   
  protected double myPointDirection;*/
{ 
 public Spaceship(){
   corners =4;
   int[] xS  ={-15, 24,-15,-3};
   int[] yS  ={-15, 0,15,0};
   xCorners = xS;
   yCorners = yS;
   myCenterX = 100;
   myCenterY = 100;
   myDirectionX= 0;
   myDirectionY = 0;
   myPointDirection=0;
   myColor = 255;
 }
 public void newStr(){
   for (int i =0; i< bob.length; i++)
  {
    bob[i] = new Star();
  }
   
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
  public void setColor(int r){
    myColor = r;
  }
    public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     

    //wrap around screen    
    if(myCenterX >width)
    {     
      myCenterX = 0;   
      newStr();
      
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
      newStr();
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
      newStr();
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = height;  
      newStr();
    }   
  }   
}
