class Escenario
{
  int x,y,x1=0,y1=620,x2=0,y2=572,x3=48,y3=572,y4=667;
  Escenario(int X,int Y)
  {
    x=X;
    y=Y;
  }
  
  void display()
  {
    image(fondo,0,0);
    //Diibuja torre
    image(torre,x,y);
    image(torre,x,y-48);
    image(torre,x,y-96);
    image(torre,x,y-144);
    image(torre,x,y-192);
    image(torre,x,y-240);
    //Lateral izquierdo de torre
    image(torre2,x2,y2);
    image(torre2,x2,y2-48);
    image(torre2,x2,y2-96);
    image(torre2,x2,y2-144);
    image(torre2,x2,y2-192);
    image(torre2,x2,y2-240);
    //Relleno de torre
    image(torre3,x3,y3);
    image(torre3,x3,y3-48);
    image(torre3,x3,y3-96);
    image(torre3,x3,y3-144);
    image(torre3,x3,y3-192);
    image(torre3,x3,y3-240);
    
    image(torre3,x3+48,y3);
    image(torre3,x3+48,y3-48);
    image(torre3,x3+48,y3-96);
    image(torre3,x3+48,y3-144);
    image(torre3,x3+48,y3-192);
    image(torre3,x3+48,y3-240);
    
    image(torre3,x3+96,y3);
    image(torre3,x3+96,y3-48);
    image(torre3,x3+96,y3-96);
    image(torre3,x3+96,y3-144);
    image(torre3,x3+96,y3-192);
    image(torre3,x3+96,y3-240);
    
    //Parte superior de torre
    image(up,234,y3-288);

    //Dibujar piso
    image(base,x1,y1);
    image(base,x1+48,y1);
    image(base,x1+96,y1);
    image(base,x1+144,y1);
    image(base,x1+192,y1);
    image(base,x1+240,y1);
    image(base,x1+288,y1);
    image(base,x1+336,y1);
    image(base,x1+384,y1);
    image(base,x1+432,y1);
    image(base,x1+480,y1);
    image(base,x1+528,y1);
    image(base,x1+576,y1);
    image(base,x1+624,y1);
    image(base,x1+672,y1);
    image(base,x1+720,y1);
    image(base,x1+768,y1);
    image(base,x1+816,y1);
    image(base,x1+864,y1);
    image(base,x1+912,y1);
    image(base,x1+960,y1);
    image(base,x1+1008,y1);
    image(base,x1+1056,y1);
    //Relleno base
    image(debaj,x1,y4);
    image(debaj,x1+48,y4);
    image(debaj,x1+96,y4);
    image(debaj,x1+144,y4);
    image(debaj,x1+192,y4);
    image(debaj,x1+240,y4);
    image(debaj,x1+288,y4);
    image(debaj,x1+336,y4);
    image(debaj,x1+384,y4);
    image(debaj,x1+432,y4);
    image(debaj,x1+480,y4);
    image(debaj,x1+528,y4);
    image(debaj,x1+576,y4);
    image(debaj,x1+624,y4);
    image(debaj,x1+672,y4);
    image(debaj,x1+720,y4);
    image(debaj,x1+768,y4);
    image(debaj,x1+816,y4);
    image(debaj,x1+864,y4);
    image(debaj,x1+912,y4);
    image(debaj,x1+960,y4);
    image(debaj,x1+1008,y4);
    image(debaj,x1+1056,y4);
    
    //Antorcha
    image(torch,x-48,y-144);
    image(torch,x-144,y-144);
    //Decoración
    //Rocas
    image(rock,550,575);
    image(rock,920,575);
    image(rock2,740,595);
    image(rock3,395,590);
    //Puerta
    image(dr,85,560);
    //Ventanas
    image(wdw,x-160,y-96);
    image(wdw,x-65,y-96);
    //Arboles
    image(decor1,980,557);
    image(decor1,250,557);
    image(decor2,600,557);
    image(decor2,350,557);
    image(decor3,800,565);
    image(decor3,430,565);
    image(ctrl,1030,560);
    image(arb,700,590);
    
    
  }
}
