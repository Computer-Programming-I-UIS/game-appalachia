class Menu{
  
 boolean start=false,pausa=false; 
 int x,y,vida=250;
 Menu(int X,int Y)
 {
   x=X;
   y=Y;
 }
 void draw()
  {
    //Menú de inicio
    if(start==false && pausa==false)
    {
    background(menucito);
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
    if(keyPressed && (key==CODED) && keyCode==CONTROL)
    {
      pausa=false;
    }
    
 }
 void update()
 {
   if(vida<=0)
   {
     vida=250;
     pausa=true;
     start=false;
     cg.pause();
     go.play();
   }
 }
 void press()
 {
   if(keyCode==10 || keyCode==SHIFT)
    {
      start=true;
      go.pause();
      cg.play();
      enemigo.vid=0;
      enemigo.puntaje=0;
      enemigo.posx=random(1300,1800);
      enemigo.pos2x=random(2500,2600);
      enemigo.pos3x=random(1400,1990);
      enemigo.pos4x=random(1900,2300);
      flecha.time=0;
    }
    if(keyCode==CONTROL)
    {
      pausa=false;
    }
 }
}
