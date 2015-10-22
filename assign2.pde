
float speed = 5;

PImage fighter;
PImage enemy;
PImage treasure;
PImage HP;
PImage background1;
PImage background2;
PImage background3;
PImage start2;
PImage start1;

int background1x;
int background2x;
int background3x;
int treasurex;
int treasurey;
int x;
int y;
int start2x;
int start1x;
int fighterx;
int fightery;

final int GAME_START = 1,GAME_WIN = 2,GAME_LOSE = 3,GAME_RUN = 4 ;
int gameState;


void setup(){
  size(640,480);
  
  enemy = loadImage("img/enemy.png");
  x = 30;
  y = floor(random(30,410));
  
  treasure = loadImage("img/treasure.png");
  treasurex = floor(random(15,340));
  treasurey = floor(random(30,440));
  
  fighter = loadImage("img/fighter.png");
  
  
  HP = loadImage("img/hp.png");
  

  background1x = 0 ;
  
  background1 = loadImage("img/background1.png");
  
  background2 = loadImage("img/background2.png");
  
  background3 = loadImage("img/background1.png");
  
  start2 = loadImage("img/start2.png");
  
  start1 = loadImage("img/start1.png");
  
  gameState = GAME_START;
}

void draw(){
 
  
  
  background2x = background1x - 636;
  background3x = background2x - 636;
  background1x = (background1x += 3) % 1280;
  image(background1,background1x,0);
  image(background2,background2x,0);
  image(background1,background3x,0);
  
  
  
  
  
  rectMode(CENTER);
  fill(255,0,0);
  rect(109,15,195,25);
  
  image(fighter,580,200);
  x = (x += 5) % width;
  image(enemy,x+3,y);
  image(treasure,treasurex,treasurey);
  image(HP,5,5);
 
  switch (gameState){
    case GAME_START:
    image(start2,start2x,0);
      if(mouseX>210&&mouseX<460){
        if(mouseY>380&&mouseY<420){
          image(start1,start1x,0);
          if(mousePressed){
          gameState = GAME_RUN;
          break;
          }  
        }
      }
   
       }
    
}
