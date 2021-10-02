PImage torre, torre2,torre3, base, up, torch, wdw, debaj, rock,rock2,rock3;
PImage  dr,decor1,decor2, decor3, decor4,ctrl, fondo,arb, intent;
PImage enmy[];
int gl;
//Clases
Escenario esc;
Enemigos enemy;
void setup()
{
  background(43,239,247);
  size(1080,720);
  //Imagenes que componen la torre
  torre= loadImage("assets/PNG/Tiles/tile56.png");
  torre2= loadImage("assets/PNG/Tiles/tile58.png");
  torre3= loadImage("assets/PNG/Tiles/tile60.png");
  up= loadImage("assets/PNG/Tiles/tile43.png");
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
  intent= loadImage("assets/PNG/Objects/intento.jpeg");
  //Imágenes para el golem
  gl=18;
  enmy= new PImage[gl];
  for(int i=0;i<gl;i++)
  {
    enmy[i]= loadImage("assets/gol/Walking/g"+nf(i)+".png");
  }
  
  fondo= loadImage("assets/PNG/Objects/fondito.jpeg");
  esc= new Escenario(192,572);
  enemy= new Enemigos(800,240);
}
void draw()
{
  esc.display();
  enemy.move();
  enemy.display();
  enemy.update();
}
