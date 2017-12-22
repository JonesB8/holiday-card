public class daynightcycle
{
  private float beginX = 100;  // Initial x-coordinate
  private float beginY = 400;  // Initial y-coordinate
  private float endX;   // Final x-coordinate
  private float endY;   // Final y-coordinate
  private float distX;          // X-axis distance to move
  private float distY;          // Y-axis distance to move
  private float exponent = 4;   // Determines the curve
  private float x = 0.0;        // Current x-coordinate
  private float y = 0.0;        // Current y-coordinate
  private float step = 0.01;    // Size of each step along the path
  private float pct = 0.0;      // Percentage traveled (0.0 to 1.0)


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
      }
  fill(255,244,81);
    ellipse(x,y,100,100);
 }
  
  
  void pointSun() 
  {  
  pct = 0.0;
  beginX = x;
  beginY = y;
  endX = 900;
  endY = 200;
  distX = endX - beginX;
  distY = endY - beginY;
  }
}