PImage torre, torre2,torre3, base, up, up2, torch, wdw, debaj, rock,rock2,rock3,mira;
PImage  dr,decor1,decor2, decor3, decor4,ctrl, fondo,arb, intent, fondito, flechita;
PImage enmy[], arco[],fantasma[];
int gl,arc,ftm;
boolean start=false;

//Clases
Escenario esc;

Flecha flecha;
Enemigos enemigo;
void setup()
{
  size(1280,720);
  frameRate(30);
  //Imagenes que componen la torre
  torre= loadImage("assets/PNG/Tiles/tile56.png");
  torre2= loadImage("assets/PNG/Tiles/tile58.png");
  torre3= loadImage("assets/PNG/Tiles/tile60.png");
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
  mira= loadImage("assets/PNG/Objects/mira.png");
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
  flecha=new Flecha(106,300);
  enemigo=new Enemigos(1200,572);
}
void draw()
{
  background(fondo);
  esc.display();
  flecha.draw();
  enemigo.move();
  enemigo.draw();
  enemigo.update();
  if(dist(flecha.posx,flecha.posy,enemigo.posx,enemigo.posy)<= enemigo.distant)
  {
  println("hola");
  enemigo.posx=(random(2000,2100));
  enemigo.puntaje+=10;
  }
  if(dist(flecha.posx,flecha.posy,enemigo.pos2x,enemigo.posy)<= enemigo.distant2)
  {
  println("hola");
  enemigo.pos2x=(random(1400,1500));
  enemigo.puntaje+=10;
  }
  if(dist(flecha.posx,flecha.posy,enemigo.pos3x,enemigo.posy)<= enemigo.distant3)
  {
  println("hola");
  enemigo.pos3x=(random(1600,2000));
  enemigo.puntaje+=10;
  }
}
void mousePressed()
{
  flecha.mousePressed();
}
void mouseReleased()
{
  flecha.mouseReleased();
}
