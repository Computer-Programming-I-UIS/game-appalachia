class Flecha
{
  float posx,posy,px,py,distant;
  double tiempo;
  float velocidadY=300,velocidadX=192;
  boolean mouse=false;
  int sx=1,vid=0,fx=0;
  
  Flecha(float X, float Y)
  {
    posx=X;
    posy=Y;
  }
  void draw()
  {
    image(arco[fx],106,300,20,20);
    image(flechita,posx,posy,20,20);
    pushMatrix();
    noFill();
    stroke(50);
    rect(posx,posy,35,34);
    popMatrix();
    stroke(30);
    line(106,300,mouseX,610);
    px=mouseX;
    py=610;
    if(mouse==true )
    {
    velocidadX=(px-posx)*0.28;
    velocidadY=(py-posy)*0.28;
    posx+=velocidadX;
    posy+=velocidadY;
    } 
    if(posy>=608)
    {
      mouse=false;
      posx=106;
      posy=300;
    }
    //distant=dist(pos
  }  
  void mousePressed()
  {
    mouse=false;
    if(mouseButton==LEFT)
    {
      fx++;
      if(fx==arc)
      {
        fx=0;
      }
    }
    if(mouseButton==RIGHT)
    {
      image(flechita,posx,posy,20,20);
    }
  }
  void mouseReleased()
  {
    mouse=true;
    posx=106;
    posy=300;
  }
}
