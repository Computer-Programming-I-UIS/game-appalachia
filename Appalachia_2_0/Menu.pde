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
    if(start==false)
    {
    background(255,0,0);
    fill(255);
    rect(580,360,280,40);
    pushMatrix();
    fill(0);
    textSize(15);
    text("Presionar Enter Para Inicar Juego",610,380);
    popMatrix();
    }
    if(keyPressed && (key==CODED) && keyCode==SHIFT)
    {
      enemigo.vid=0;
      enemigo.puntaje=0;
      enemigo.posx=random(1300,1800);
      enemigo.pos2x=random(1300,1800);
      enemigo.pos3x=random(1300,1800);
      start=true;
    }
    if(pausa==true && start==false)
    {
     background(0);
     fill(255);
     text("Game Over",500,500);
    }
 }
 void update()
 {
   if(vida<=0)
   {
     vida=250;
     pausa=true;
     start=false;
   }
 }
}
