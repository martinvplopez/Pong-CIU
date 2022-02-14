

class Ball{
  float vx=getRandom(); // x-Speed
  float vy=getRandom();  // y-Speed
  float diam=30; // Ball diameter
  float bx=width/2; // X-coordinate of the center of the ball
  float by=height/2; // Y-coordinate of the center of the ball
  float rad=diam/2;
  
  void show(){
    fill(223,255,0);
    ellipse(bx,by,diam,diam);
  }
  
  float getRandom(){ // Initial random direction
    float auxRand=random(-5,5);
    if (auxRand<=0){
      return 3.2;
    }
    return -3.2;
  }
  
  void reset(){
    vx=getRandom();
    vy=getRandom();
    bx=width/2;
    by=height/2;
  }
  
  
  void move(){ 
    bx=bx+vx;
    by=by+vy;
  }
  void check(Player pl, Player pr){ // Controls collisions with the edges and both players
    if (vx>0){
      if( bx+rad+5>=width-pr.widthRect && by<=pr.y+pr.heightRect/2 && by>=pr.y- pr.heightRect/2){
        vx = -vx;
        vx-=0.75;
        bounceS();
      }
      else if(bx-rad>=width){ // Left player scores
        pl.score++;
        goal();
      }
    }
    else if (vx<0){
      if(bx-rad-5<=pl.widthRect && by-rad<=pl.y+pl.heightRect/2 && by+rad>=pl.y-pl.heightRect/2){
        vx = -vx;
        vx+=0.75;
        bounceS();
      }
      else if(bx+rad<=0){ // Right player scores
        pr.score++;
        goal();
      }
    }
    if(by-rad<0 ||by+rad>height){
      vy=-vy;
    }
  }
  
  
  
  
}
