public class merryChristmas
{
  private float red;
  private float grn;
  private float blu;
  
  public void drawSign()
  {
    if (mouseX<=0)
    red = 171;
    else
    red = 171 + .25*(mouseX);
                      
   if (mouseX<=0)
    grn = 252;
    else
    grn = 252 + .25*(mouseX);
    
   //if ((255 - .1*(mouseX))<255) 
    blu =255; 
   
    
    fill(red,grn,blu);
    textSize(72);
    text("Merry Christmas!", 260,310);
  }
  
  public void lightRGB()
  {
    
  }
  //public void drawLights()
 // {
   // fill (r,50,50);
  //    ellipse(263,310,10,5);
 // }
}