PImage torre, torre2,torre3,torre4,torre5, base, up, up2, torch, wdw, debaj, rock,rock2,rock3,mira;
PImage  dr,decor1,decor2, decor3, decor4,ctrl, fondo,arb, intent, fondito, flechita;
PImage enmy[], arco[],fantasma[];
int gl,arc,ftm;
boolean pausa=false;

//Clases
Escenario esc;

Flecha flecha;
Enemigos enemigo;
Menu menu;
void setup()
{
  size(1280,720);
  frameRate(30);
  //Imagenes que componen la torre
  torre= loadImage("assets/PNG/Tiles/tile56.png");
  torre2= loadImage("assets/PNG/Tiles/tile58.png");
  torre3= loadImage("assets/PNG/Tiles/tile60.png");
  torre4= loadImage("assets/PNG/Tiles/tile41.png");
  torre5= loadImage("assets/PNG/Tiles/tile44.png");
  fondito= loadImage("assets/PNG/Tiles/tile38.png");
 // bi= loadImage("assets/PNG/Tiles/tile42.png");
  //bd= loadImage("assets/PNG/Tiles/tile42.png");
  up= loadImage("assets/PNG/Tiles/tile42.png");
  up2= loadImage("assets/PNG/Tiles/tile43.png");
  torch= loadImage("assets/PNG/Objects/torch.png");
  wdw= loadImage("assets/PNG/Objects/window.png");
  dr= loadImage("assets/PNG/Objects/door2.png");
  //Cosas que van en la base del mapa
  base= loadImage("assets/PNG/Tiles/pisito.png");
  debaj= loadImage("assets/PNG/Tiles/debaj2.png");
  decor1= loadImage("assets/PNG/Objects/trees2_1.png");
  decor2= loadImage("assets/PNG/Objects/trees2_2.png");
  decor3= loadImage("assets/PNG/Objects/trees2_3.png");
  rock= loadImage("assets/PNG/Objects/rocks2_1.png");
  rock2= loadImage("assets/PNG/Objects/rocks2_2.png");
  rock3= loadImage("assets/PNG/Objects/rocks2_3.png");
  ctrl= loadImage("assets/PNG/Objects/pointer.png");
  arb= loadImage("assets/PNG/Objects/pink_bush2.png");
  flechita= loadImage("assets/arc/arc/fl1.png");
  //Imágenes para el golem y la flecha
  gl=19;
  arc=4;
  ftm=15;
  enmy= new PImage[gl];
  arco= new PImage[arc];
  fantasma= new PImage[ftm];
  for(int i=1;i<gl;i++)
  {
    enmy[i]= loadImage("assets/gol/Walking/g"+nf(i)+".png");
  }
  for(int i=1;i<ftm;i++)
  {
    fantasma[i]= loadImage("assets/fts/fantasma "+nf(i)+".png");
  }
  
  for(int i=0;i<arc;i++)
  {
    arco[i]= loadImage("assets/arc/arc/arc"+nf(i)+".png");
  }
  fondo= loadImage("assets/PNG/Objects/fondito.jpeg");
  //Declaracion de coordenadas de las clases
  esc= new Escenario(192,572);
  flecha=new Flecha(106,295);
  enemigo=new Enemigos(random(1500,1800),572);
  menu= new Menu(620,360);
}
void draw()
{
  menu.draw();
  if(menu.start==true)
  {
  background(fondo);
  esc.display();
  flecha.draw();
  enemigo.move();
  enemigo.draw();
  enemigo.update();
  //Colision con los 3 enemigos
  if(dist(flecha.posx,flecha.posy,enemigo.posx,enemigo.posy)<= enemigo.distant)
  {
  flecha.mouse=false;
  enemigo.vida-=10;
  enemigo.puntaje+=10;
  }
  else if(flecha.posy>=600)
  {
    flecha.mouse=false;
  }
  if(dist(flecha.posx,flecha.posy,enemigo.pos2x,enemigo.posy)<= enemigo.distant2)
  {
  flecha.mouse=false;
  enemigo.vida2-=10;
  enemigo.puntaje+=10;
  }
  if(dist(flecha.posx,flecha.posy,enemigo.pos3x,enemigo.posy)<= enemigo.distant3)
  {
  flecha.mouse=false;
  enemigo.vida3-=10;
  enemigo.puntaje+=10;
  }
  if(dist(flecha.posx,flecha.posy,enemigo.pos4x,enemigo.posy)<= enemigo.distant4)
  {
  flecha.mouse=false;
  enemigo.vida4-=10;
  enemigo.puntaje+=10;
  }
  }
  menu.update();
  
}
void mousePressed()
{
  flecha.mousePressed();
}
void mouseReleased()
{
  flecha.mouseReleased();
}
