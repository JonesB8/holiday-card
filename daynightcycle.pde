public class daynightcycle
{
  private float beginX;  // Initial x-coordinate
  private float beginY;  // Initial y-coordinate
  private float endX;   // Final x-coordinate
  private float endY;   // Final y-coordinate
  private float distX;          // X-axis distance to move
  private float distY;          // Y-axis distance to move
  private float exponent = 4;   // Determines the curve
  private float x = 0.0;        // Current x-coordinate
  private float y = 0.0;        // Current y-coordinate
  private float step = 0.01;    // Size of each step along the path
  private float pct = 0.0;      // Percentage traveled (0.0 to 1.0)
  private int stateSun;
  private int g2 = 244;
  private int b2 = 81;

int sunPos()
{
  if (x==0)
    stateSun=1;
  if (x==900)
    stateSun=2;
   return stateSun;
}


void setup() {
 
 distX = endX - beginX;
 distY = endY - beginY;
}


 public void drawSun()
     {
        pct += step;
          if (pct < 1.0) 
            {
              x = beginX + (pct * distX);
              y = beginY + (pow(pct, exponent) * distY);
             
                g2++;
                b2++;
            }
        fill(255,g2,b2);
        ellipse(x,y,100,100);
      }
  
  
    void pointSun(float enter)
      {  
        pct = 0.0;
        beginX = x;
        beginY = 55;
        endX = enter;
        endY = 200;
        distX = endX - beginX;
        distY = endY - beginY;
      
      }
     }