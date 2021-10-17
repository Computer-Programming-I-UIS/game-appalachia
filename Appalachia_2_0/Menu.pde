class Menu{
 boolean start=false,pausa=false,instruction=false, sound=false; 
 int x,y,vida=250;
 float i=0.5;
 Menu(int X,int Y)
 {
   x=X;
   y=Y;
 }
 void draw()
  {
    //Menú de inicio
    if(start==false && pausa==false && instruction==false)
    {
    background(menucito);
    pushMatrix();
    fill(0);
    textSize(20);
    text("Presiona I para acceder a instrucciones",930,30);
    text("Presiona O para configurar el volumen del audio",20,30);
    popMatrix();
    //in.loop();
    }
    if(pausa==true && start==false)
    {
     background(0);
     fill(255);
     textSize(40);
     text("Game Over",524,300);
     text("Puntaje",310,420);
     text(enemigo.puntaje,500,420);
     text("Tiempo",760,420);
     text(flecha.time,990,420);
     pushMatrix();
     textSize(18);
     text("Presiona CONTROL para volver al menú principal",50,680);
     text("Presiona SHIFT para reintentar",850,680);
     popMatrix();
    }
    if(instruction==true)
    {
      background(inst);
      pushMatrix();
      fill(0);
      textSize(20);
      text("Presiona Enter para continuar al juego...",920,30);
      popMatrix();
    }
    if(sound==true)
    {
      background(100,200,100);
      pushMatrix();
      fill(0);
      textSize(30);
      text("Presiona Flecha arriba para subir el volumen",700,230);
      text("Presiona Flecha arriba para subir el volumen",30,230);
      popMatrix();
      fill(0);
      quad(600,300,660,300,660,460,600,460);
      fill(200+(i*400),300-(i*240),0);
      quad(600,460-(i*160),660,460-(i*160),660,460,600,460);
      cg.amp(i);
      pausa=true;
      start=false;
    }
    
 }
 void update()
 {
   if(vida<=0)
   {
     vida=250;
     pausa=true;
     start=false;
     cg.stop();
     go.play();
   }
 }
 void press()
 {
   if(keyCode==10 || keyCode==SHIFT)
    {
      start=true;
      instruction=false;
      go.stop();
      cg.loop();
      sound=false;
      enemigo.vid=0;
      enemigo.puntaje=0;
      enemigo.posx=random(1300,1800);
      enemigo.pos2x=random(2500,2600);
      enemigo.pos3x=random(1400,1990);
      enemigo.pos4x=random(1900,2300);
      enemigo.pos5x=random(2900,3200);
      flecha.time=0;
    }
    if(keyCode==CONTROL)
    {
      pausa=false;
      sound=false;
      cg.stop();
      go.stop();
    }
    if(keyCode==73)
    {
      instruction=true;
    }
    if(keyCode==CONTROL)
    {
      pausa=false;
    }
    if(keyCode==79)
    {
      sound=true;
    }
    if(keyCode==UP)
    {
      i=constrain(i+=0.1,0,1);
    }
    if(keyCode==DOWN)
    {
      i=constrain(i-=0.1,0,1);
    }
 }
}
