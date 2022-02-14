class Player{
  int heightRect=80; // Player height 
  int widthRect=10;  // Player width 
  int y=height/2; // Y-coordinate of player
  int x; // Y-coordinate of player
  int score=0;
  Player(int posX){
    x=posX;
  }
  
  int getScore(){
    return score;
  }
  
  void reset(){
    y=height/2;
  }
  
  
  void control(float distance){
    y+=distance;
    y=constrain(y,heightRect/2+1,height-heightRect/2-1);
  }
  
  void show(int flagC){
    if (flagC==1){
      fill(255,69,0);    
    }
    if (flagC==0){
      fill(0,128,128);    
    }
    rectMode(CENTER);
    rect(x,y,widthRect,heightRect);
  }
  
}
