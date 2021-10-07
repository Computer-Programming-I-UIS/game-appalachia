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
    image(arco[fx],106,300,35,35);
    image(flechita,posx,posy,30,30);
    stroke(30);
    line(106,300,mouseX,610);
    if(mouse==true )
    {
    velocidadX=(pmouseX-posx)*0.18;
    velocidadY=(610-posy)*0.18;
    posx+=velocidadX;
    posy+=velocidadY;
    } 
    if(mouse==false)
    {
      posx=106;
      posy=300;
    }
  }  
  void mousePressed()
  {
    if(mouseButton==LEFT)
    {
      fx++;
      if(fx==arc)
      {
        fx=0;
      }
    }
  }
  void mouseReleased()
  {
    mouse=true;
  }
}
