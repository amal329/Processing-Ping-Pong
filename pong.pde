int lpad=400;
int rpad=400;

int ballx=width/2;
int bally=height/2;

boolean moveright=true;
boolean movedown=true;

int lscore=0;
int rscore=0;

PFont font;
int speed=3;

void setup(){
  size(800,800);
  background(25);
  font=loadFont("Calibri-48.vlw");
}
 
void draw(){
background(25);
textFont(font); 

fill(255,0,0);
ellipse(ballx,bally,50,50);
text("Ping-Pong",300,50);

fill(0,255,0);
rect(20,lpad,30,100);
text(lscore,200,50);

fill(0,0,255);
rect(750,rpad,30,100);
text(rscore,500,50);

if(keyPressed==true && key=='w')
{
  lpad=lpad-10;
}

if(keyPressed==true && key=='s')
{
  lpad=lpad+10;
}

if(keyPressed==true && keyCode==DOWN)
{
  rpad=rpad+15;
}

if(keyPressed==true && keyCode==UP)
{
  rpad=rpad-15;
}

if(moveright==true)
{
  ballx=ballx+speed;
}
else
{
  ballx=ballx-speed;
}

if(movedown==true)
{
  bally=bally+speed;
}
else
{
  bally=bally-speed;
}

if(bally<=10)
{
  movedown=true;
}
if(bally>=780)
{
  movedown=false;
}

if(ballx<=10)
{
  moveright=true;
}
if(ballx>=780)
{
  moveright=false;
}

if(ballx>=770){
  lscore++; 
  ballx=width/2;
  bally=height/2;
}

if(ballx<=10){
  rscore++; 
  ballx=width/2;
  bally=height/2;
}

if(ballx>=715 && bally>rpad && bally <(rpad+100)){
  moveright=false;
  speed++;
}

if(ballx<=75 && bally>lpad && bally <(lpad+100)){
  moveright=true;
  speed++;
}
}
