class Enemigos
{
  float posx,posy,posy2=537,distant,distant2,distant3,distant4,distant5,pos2x=(random(2500,2600)),pos3x=(random(1400,1990)),pos4x=(random(1900,2300)),pos5x=(random(2900,3200));
  int sx=1,vid=0,fx=0,dx=1,zx=1,puntaje,vida=30,vida2=180,vida3=60,vida4=30,vida5=40,videx;
  Enemigos(float X, float Y)
  {
    posx=X;
    posy=Y;
  }
  void draw()
  {
    //Dibujo de varios enemigos
    image(enmy[sx],posx,posy2);
    image(enmy[sx],pos2x,posy2);
    image(fantasma[dx],pos3x,posy);
    image(fantasma[dx],pos4x,posy);
    image(fantasma2[zx],pos5x,posy);
    
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
    distant5= dist(pos5x+35,posy,pos5x+32,posy+49);
    println(vid);
  }
  //Velocidad de los enemigos
  void move()
  {
    posx-=random(3,5);
    pos2x-=random(1,2);
    pos3x-=random(2,5);
    pos4x-=random(4,6);
    pos5x-=random(2,5);
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
    if(pos5x<75)
    {
      pos5x=random(1900,2300);
      vid--;
      menu.vida-=20;
    }
    
    //Vida de los enemigos
    if(vida<=0)
      {
        vida+=(30+videx);
        posx=(random(1300,1800));
        puntaje+=10;
      }
      if(vida2<=0)
      {
        vida2+=(120+videx);
        pos2x=(random(2500,2600));
        puntaje+=40;
      }
      if(vida3<=0)
      {
        vida3+=(50+videx);
        pos3x=(random(1400,1990));
        puntaje+=15;
      }
      if(vida4<=0)
      {
        vida4+=(30+videx);
        pos4x=random(1900,2300);
        puntaje+=10;
      }
      if(vida5<=0)
      {
        vida5+=(40+videx);
        pos5x=(random(2900,3200));
        puntaje+=15;
        videx+=2;
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
    zx+=1;
    if(zx==ftm2)
    {
      zx=1;
    }
  }
}
