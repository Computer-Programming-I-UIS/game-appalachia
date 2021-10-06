class Enemigos
{
  float posx,posy,distant,distant2,distant3,pos2x=1000,pos3x=1400;
  int sx=1,vid=0,fx=0,dx=1,puntaje,vida;
  Enemigos(float X, float Y)
  {
    posx=X;
    posy=Y;
  }
  void draw()
  {
    for(int i=1;i<5;i++)
    {
    image(enmy[sx],posx,posy);
    image(enmy[sx],pos2x,posy);
    image(fantasma[dx],pos3x,posy);
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
    pushMatrix();
     fill(0);
    textSize(30);
    text("Puntaje :",700,60);
    text(puntaje,830,60);
    popMatrix();
    distant= dist(posx+10,posy,posx+62,posy+49);
    distant2= dist(pos2x+10,posy,pos2x+62,posy+49);
    distant3= dist(pos3x+10,posy,pos3x+62,posy+49);
    }
  }
  void move()
  {
    posx-=random(1,3);
    pos2x-=random(1,3);
    pos3x-=random(3,8);
    if(posx<75)
    {
      posx=random(1300,1800);
      vid--;
    }
    if(pos2x<75)
    {
      pos2x=random(1300,1800);
      vid--;
    }
    if(pos3x<75)
    {
      pos3x=random(1300,1800);
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
    dx+=1;
    if(dx==ftm)
    {
      dx=1;
    }
  }
}
