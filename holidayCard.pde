 snow a = new snow();
 snowman b = new snowman();
 rgb c = new rgb();
 daynightcycle d = new daynightcycle();
 merryChristmas e = new merryChristmas();
    float r = 171;
    float g = 252;
    float B = 255;

    
  
void setup()
{
  size(900,400);
}

void draw()
{
 
  
 //if (c.rgbDirection()==1)
  c.mouseRgb();
 //if (c.rgbDirection()==2)
  //c.incrementRgbUp();
    background(r,g,B);
 
  fill(255,255,255);
   noStroke();
   rect(0,350,1200,1200);
  b.drawSnowman();
  a.drawSnow();
   d.setup();
   d.pointSun(845);
   d.drawSun();
  e.drawSign();

}