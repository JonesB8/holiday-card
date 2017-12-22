public class rgb
{
  private int state;
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