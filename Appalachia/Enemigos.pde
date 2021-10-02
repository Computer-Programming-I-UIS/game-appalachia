class Enemigos
{
  int x,y,posx,vid=0;
  Enemigos(int X,int Y)
  {
    x=X;
    y=Y;
  }
  void move()
  {
    x-=100;
    if(x<15)
    {
      x=1400;
      vid--;
    }
  }
  void update()
  {
    posx+=1;
    if(posx==gl)
    {
      posx=0;
    }
  }
  void display()
  {
    image(enmy[posx],x,y);
    delay(100);
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
    
    if(vid<-15)
    {
      background(0);
      fill(200,0,200);
      textSize(50);
      text("Game Over",540,360);
    }
  }
}
