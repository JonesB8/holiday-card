class snow
{
  int quantity = 300;
  float[] xPos = new float[quantity];
  float[] yPos = new float[quantity];
  int[] size = new int[quantity];
  int[] direction =  new int[quantity];

  public snow()
  {

    for (int i = 0; i < quantity; i++)
    {
      xPos[i] = random(0, 1300);
      yPos[i] = random(0, 500);
      size[i] = round(random(1, 10));
      direction[i] = round(random(0, 1));
    }
  }



  public void drawSnow()
  {
   

    for (int i = 0; i < quantity; i++)
    {
      fill(255);
      ellipse(xPos[i], yPos[i], size[i], size[i]);

      if (direction[i] == 0)
      {
        xPos[i] -= .5;
        yPos[i] += (float)(size[i]/3);
      }

      if (direction[i] == 1)
      {
        xPos[i] += .5;
        yPos[i] += (float)(size[i]/3);
      }

      if (yPos[i] > 500)
      {
        xPos[i] = random(0, 1300);
        yPos[i] = 0;
      }
    }
  }
}