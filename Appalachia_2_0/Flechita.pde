class Flecha
{
  float posx,posy,px,py,distant,time;
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
    //Dibujo del mago
    image(mago[fx],90,240);
    //Dibujo de flecha
    image(bola[bx],posx,posy);
    stroke(30);
    line(126,240,mouseX,600);
    //Tiempo
    time+=(1/frameRate);
    bx++;
    if(bx==bl)
    {
      bx=0;
    }
    if(mouse==true )
    {
      //Velocidad en X y Y
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
      posx=126;
      posy=240;
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
