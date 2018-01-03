public class rgb
{
  private int state;
  public void mouseRgb()
  {
   if (mouseX<0)
    r = 171;
    else
    r = 171 - .3*(mouseX);
                      
   if (mouseX<0)
    g = 252;
    else
    g = 252 - .3*(mouseX);
    
   //if ((255 - .1*(mouseX))<255) 
    B = 255 - .3*(mouseX); 
   
  }
  
  public void incrementRgbDown()
  {
     r--;
     g--;
     B--;
    
  }
  public void incrementRgbUp()
  {
     if (r<171)
       r++;
     if (g<252)  
       g++;
     if (B<255)  
       B++;
  }
  
  public int rgbDirection()
  {
    if (r==171 && g==252 && B==255)
      state=1;
    if (r<=0 && g<=0 && B<=0)
      state=2;
      return state;
  }

}