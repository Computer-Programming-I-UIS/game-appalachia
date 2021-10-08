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
     text("Game Over",500,500);
     text(enemigo.puntaje,200,200);
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
   if(keyCode==10)
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
    }
    if(keyCode==CONTROL)
    {
      pausa=false;
    }
 }
}
