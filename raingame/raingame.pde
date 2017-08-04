
int ypos;
int xpos;
int score;

void setup(){
  size(500,500);
  ypos=10;
  xpos=250;
  

}
void checkCatch(int x, int y){
if ((x > mouseX-25 && x < mouseX+25) && (y > 450 && y< 475)){
      score++;
      ypos=0;
      xpos=(int)random(501);
}
}
void draw(){
  checkCatch(xpos, ypos);
  background(260, 154, 179);
  fill(58, 156, 240);
  noStroke();
  ellipse(xpos, ypos, 20, 25);
  ypos=ypos+5;
  if (ypos>500){
   
    ypos=0;
    xpos=(int)random(501);
    if (score>0){
    score=score-1;
    }
  }
  if (score==5){
  xpos=-1;
  ypos=-1;
  background(109, 250, 209);
  textSize(30);
  text("YOU WON :)", 170, 250);
  }
  rect(mouseX-25, 450, 50,40);
  fill(0, 0, 0);
  textSize(16);
  text("Score: " + score, 20, 20);

} 