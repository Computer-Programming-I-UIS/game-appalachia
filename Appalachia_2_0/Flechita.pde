class Flecha
{
  float posx,posy,px,py,distant;
  double tiempo;
  float velocidadY=300,velocidadX=192;
  boolean mouse=false;
  int sx=1,vid=0,fx=1,bx=0;
  
  Flecha(float X, float Y)
  {
    posx=X;
    posy=Y;
  }
  void draw()
  {
    image(mago[fx],90,290);
    image(bola[bx],posx,posy);
    stroke(30);
    line(106,300,mouseX,610);
    bx++;
    if(bx==bl)
    {
      bx=0;
    }
    if(mouse==true )
    {
    velocidadX=(pmouseX-posx)*0.18;
    velocidadY=(610-posy)*0.18;
    posx+=velocidadX;
    posy+=velocidadY;
    fx++;
    if(fx==mg)
    {
      fx=1;
    }
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
    }
  }
  void mouseReleased()
  {
    mouse=true;
  }
}
