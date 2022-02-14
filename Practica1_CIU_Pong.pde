import processing.sound.*;
Ball ball;
Player playerLeft;
Player playerRight;
SoundFile bounceS, scoreS;
final int DRAWMENU=0;
final int DRAWGAME=1;
final int DRAWHELP=2;
int screenState;

void setup(){
  size(500,500);
  background(240);
  screenState=DRAWMENU;
  ball=new Ball();
  playerLeft= new Player(10);
  playerRight= new Player(width-10);
  fill(0);
  bounceS= new SoundFile(this, "/Ensoniq-VFX-SD-Ride-Cymbal.wav");
  scoreS= new SoundFile(this, "/Alesis-Sanctuary-QCard-Choir-Aah-C4.wav");
}

void bounceS(){
  bounceS.play();
}

void goal(){
  scoreS.play();
  ball.reset();
  playerRight.reset();
  playerLeft.reset();
}


int aux=0;
void draw(){ // Continous drawing
  switch(screenState){
    case DRAWMENU:
        drawMenu();
        break;
    case DRAWGAME:
      drawGame();
       // Left player controls
        if (keyPressed == true && key=='w'){ 
          playerLeft.control(-7.5);
        }
        if (keyPressed == true && key=='s'){ 
          playerLeft.control(7.5);
        }
        // Right player controls
        if (keyPressed == true && key=='i'){
          playerRight.control(-7.5);
        }
        if (keyPressed == true && key=='k'){ 
          playerRight.control(7.5);
        }
      break;
    case DRAWHELP:
      drawHelp();
      break;
  }
}

void drawMenu(){
  fill(223,255,0);
  background(170);
  textSize(65);
  textAlign(CENTER);
  text("PONG GAME",width/2,75);
  textSize(30);
  fill(0);
  text("¡Pulsa ESPACIO para jugar!",width/2,180);
  noFill();
  line(210,260,250,260);
  line(250,260,250,300);
  line(250,300,210,300);
  line(210,300,210,260);
  text("?", 230, 290 );
  textSize(15);
  text("Ayuda",230, 320);
}
  
void drawGame(){
  background(180);
  fill(223,255,0);
  line(width/2,0,width/2,height);
  fill(0);
  textSize(30);
  fill(0);
  text("Puntuación",30,40);
  int leftScore=playerLeft.getScore();
  int rightScore=playerRight.getScore();
  textAlign(LEFT);
  textSize(45);
  text(str(leftScore), 225, 40);
  textSize(45);
  text(str(rightScore), 254, 40);
  textSize(15);
  text("Velocidad pelota " + str(ball.vx),300,40);
  playerLeft.show(1);
  playerRight.show(0);
  if(leftScore==7||rightScore==7){
    fill(250,250,210);
    textSize(20);
    text("Pulsa R para jugar de nuevo",260,450);
     if (keyPressed == true && key=='r'){ 
          reset();
     }
     textSize(30);

  }
  if (leftScore==7){
    text("¡Partida ganada!",30,80);
    
  }else if(rightScore==7){
    text("¡Partida ganada!", 254, 80);
    text("Velocidad pelota antes del gol " + str(ball.vx),30,110);
  }else{
    ball.move();
    ball.check(playerLeft,playerRight);
  }
  ball.show();
}

void drawHelp(){
  background(160);
    textSize(30);
    textAlign(LEFT);
    text("Instrucciones del juego", 90,40);
    textSize(20);
    text("Una bola que va aumentando de velocidad.\n2 jugadores. El que la meta 7 veces gana.",70,100);
    textSize(25);
    text("Controles", 190,195);
    text("Jug. Derecho", 290,230);
    line(290,233,425,233);
    text("Jug. Izquierdo", 45,230);
    line(45,233,190,233);
    textSize(20);
    text("W: Mov. arriba", 45,265);
    text("S: Mov. abajo", 45,300);
    text("I: Mov. arriba", 290,265);
    text("K: Mov. abajo", 290,300);
    text("ESCAPE: volver al menú",115,340);

}
void reset(){
  ball.reset();
  playerLeft.reset();
  playerRight.reset();
  playerRight.score=0;
  playerLeft.score=0;
}

void keyPressed(){
      if (screenState==DRAWMENU && key==' '){ 
           reset();
           screenState=DRAWGAME;
        }
      if(keyCode==27 && screenState!=DRAWMENU){
        key=0;
        reset();
        screenState=DRAWMENU;
      }
}

void mousePressed(){
  if(screenState==DRAWMENU && mouseX>=210 && mouseX<=250 && mouseY>=260 && mouseY<=300){
    screenState=DRAWHELP;
  }
}
