class Enemigos
{
  float posx,posy,distant,distant2,distant3,distant4,pos2x=(random(2500,2600)),pos3x=(random(1400,1990)),pos4x=(random(1900,2300));
  int sx=1,vid=0,fx=0,dx=1,puntaje,vida=20,vida2=100,vida3=40,vida4=30;
  Enemigos(float X, float Y)
  {
    posx=X;
    posy=Y;
  }
  void draw()
  {
    //Dibujo de varios enemigos
    image(enmy[sx],posx,posy);
    image(enmy[sx],pos2x,posy);
    image(fantasma[dx],pos3x,posy);
    image(fantasma[dx],pos4x,posy);
    //Dibujo de vida y puntaje
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
    //Area del enemigo
    distant= dist(posx+35,posy,posx+32,posy+49);
    distant2= dist(pos2x+35,posy,pos2x+32,posy+49);
    distant3= dist(pos3x+35,posy,pos3x+32,posy+49);
    distant4= dist(pos4x+35,posy,pos4x+32,posy+49);
    println(menu.vida);
  }
  //Velocidad de los enemigos
  void move()
  {
    posx-=random(3,5);
    pos2x-=random(2,3);
    pos3x-=random(2,5);
    pos4x-=random(4,7);
    //Lo que le pasa a los enemigos y a la torre si los enemigos llegan a la puerta
 
    if(posx<75)
    {
      posx=random(1300,1800);
      vid--;
      menu.vida-=10;
    }
    if(pos2x<75)
    {
      pos2x=random(2500,2600);
      vid--;
      menu.vida-=30;
    }
    if(pos3x<75)
    {
      pos3x=random(1400,1990);
      vid--;
      menu.vida-=20;
    }
    if(pos4x<75)
    {
      pos4x=random(1900,2300);
      vid--;
      menu.vida-=20;
    }
    
    //Vida de los enemigos
    if(vida==0)
      {
        vida+=30;
        posx=(random(1300,1800));
        puntaje+=10;
      }
      if(vida2==0)
      {
        vida2+=120;
        pos2x=(random(2500,2600));
        puntaje+=40;
      }
      if(vida3==0)
      {
        vida3+=50;
        pos3x=(random(1400,1990));
        puntaje+=15;
      }
      if(vida4==0)
      {
        vida4+=30;
        pos4x=random(1900,2300);
        puntaje+=10;
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
