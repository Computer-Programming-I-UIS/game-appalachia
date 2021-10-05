class Flecha
{
  float posx,posy,gravedad,presion=0,px,py;
  double tiempo;
  float velocidadY=300,velocidadX=192;
  boolean mouse=false;
  int sx=1,vid=0,fx=0;
  int pos2x=1200,pos2y=572;
  
  Flecha(float X, float Y)
  {
    posx=X;
    posy=Y;
  }
  void draw()
  {
    image(arco[fx],106,300,20,20);
    image(flechita,posx,posy,20,20);
    stroke(30);
    line(106,300,mouseX,600);
    px=mouseX;
    py=mouseY;
    if(mouse==true && mouseY>610)
    {
    velocidadX=(px-posx)*0.28;
    velocidadY=(py-posy)*0.28;
    posx+=velocidadX;
    posy+=velocidadY;
    } 
    if(posy>=610)
    {
      mouse=false;
      posx=106;
      posy=300;
    }
    //Enemigo
    image(enmy[sx],pos2x,pos2y);
    pushMatrix();
    fill(0);
    textSize(30);
    text("Vida :",700,30);
    fill(255);
    quad(790,10,870,10,870,30,790,30);
    fill(0-(vid*30),255+(vid*30),0);
    noStroke();
    quad(790,10,870+(vid*5),10,870+(vid*5),30,790,30);
    popMatrix();
  }
  
  
  //Enemigo
  void move()
  {
    //Velocidad enemigo
    pos2x-=1;
    if(pos2x<75)
    {
      pos2x=1200;
      vid--;
    }
  }
  void update()
  {
    sx+=1;
    if(sx==gl)
    {
      sx=1;
    }
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
