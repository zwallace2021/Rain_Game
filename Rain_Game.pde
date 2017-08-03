int ypos;
int xpos;
int score;
void setup(){
  size(500,500);
  ypos=10;
  xpos=250;
}
void checkCatch(int x){
if (x > mouseX && x < mouseX+100)
      score++;
   else if (score > 0)
     score--;
}
void draw(){
  checkCatch(xpos);
  background(260, 154, 179);
  fill(58, 156, 240);
  noStroke();
  ellipse(xpos, ypos, 20, 25);
  ypos=ypos+5;
  if (ypos>500){
    ypos=0;
    xpos=(int)random(501);
  }
  rect(mouseX-25, 450, 50,40);
  fill(0, 0, 0);
  textSize(16);
  text("Score: " + score, 20, 20);

}