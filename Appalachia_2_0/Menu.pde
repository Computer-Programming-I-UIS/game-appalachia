class Menu{
 boolean start=false,pausa=false,instruction=false, sound=false,credit=false; 
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
    text("Presiona C para acceder a los créditos del juego",425,640);
    popMatrix();
    //in.loop();
    }
    if(pausa==true && start==false)
    {
     background(dead);
     pushMatrix();
     textSize(30);
     fill(255);
     text("Presione C para acceder a los créditos",425,680);
     popMatrix();
     fill(255);
     textSize(50);
     text(enemigo.puntaje,660,400);
     text(flecha.time,660,290);
    }
    if(instruction==true)
    {
      background(inst);
      pushMatrix();
      fill(255);
      textSize(20);
      text("Presiona Enter para continuar al juego...",920,30);
      text("Presiona CTRL para regresar al menú principal",0,20);
      popMatrix();
    }
    if(sound==true && start==false)
    {
      background(aud);
      pushMatrix();
      fill(0);
      textSize(30);
      popMatrix();
      pushMatrix();
      textSize(20);
      text("Presiona CTRL para regresar al menú principal",0,20);
      text("Presiona Enter para continuar al juego...",0,60);
      popMatrix();
      fill(0);
      quad(600,300,660,300,660,460,600,460);
      fill(200+(i*400),300-(i*240),0);
      quad(600,460-(i*160),660,460-(i*160),660,460,600,460);
      cg.amp(i);
      pausa=true;
      start=false;
    }
    if(credit==true && start==false)
    {
      background(0);
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
   if(keyCode==10  && start==false|| keyCode==SHIFT && pausa==true)
    {
      start=true;
      instruction=false;
      sound=false;
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
      credit=false;
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
      instruction=false;
      sound=false;
    }
    if(keyCode==79)
    {
      sound=true;
    }
    if(keyCode==67)
    {
      credit=true;
    }
    if(keyCode==UP && sound==true)
    {
      i=constrain(i+=0.1,0,1);
    }
    if(keyCode==DOWN && sound==true)
    {
      i=constrain(i-=0.1,0,1);
    }
 }
}
