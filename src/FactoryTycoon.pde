// Alon Galili || JANUARY 2


int currentScreen = 0; // 0 = home, 1 = add questions, 2 = report
int fade = 255; // fade effect
String[] lines;
Button playButton;
Button addQuestionButton;
Button reportButton;
Button Instructions;
Button Worker;
Button Answer1;
Button Answer2;
Button Answer3;
PFont font;
CEO c;

void setup() {
  background(0);
  size(800, 600);
  font = createFont("Arial",32);
  textFont(font);
  c = new CEO();
   playButton = new Button(this, "Play", new PVector(200, 100), new PVector(400, 100));
   addQuestionButton = new Button(this, "Add Questions", new PVector(200, 250), new PVector(400, 100));
   reportButton = new Button(this, "Report", new PVector(200, 400), new PVector(400, 100));
   Worker = new Button(this, "Worker", new PVector(200, 400), new PVector(400, 100));
   Instructions = new Button(this, "Understand",new PVector(200, 500), new PVector(400, 100));
   Answer1 = new Button(this, "x^2", new PVector(200, 100), new PVector(400, 100));
  Answer2 = new Button(this, "3x^2", new PVector(200, 250), new PVector(400, 100));
   Answer3 = new Button(this, "x^4", new PVector(200, 400), new PVector(400, 100));
 
}

void draw() {

  fill(255);
  textSize(128);
  background(0);

  // Draw the current screen
  switch (currentScreen) {
  case 0: // home screen
    playButton.display();
    addQuestionButton.display();
    reportButton.display();
    break;
  case 1: // add questions screen
    background(255);

    // display the lines of text on the screen
    textAlign(LEFT);
    textSize(20);
    fill(0);
  case 2: // report screen
    fill(255);
    textSize(32);
    textAlign(CENTER, CENTER);
    text("Report", width/2, height/2);
    break;
  case 3: // instruction screen
    textAlign(CENTER);
    textSize(20);
    fill(255);
    text("Instructions:" + " \n" + "The goal of the game is to get to 1 Million Dollars in your Tycoon." +  "\n"  +
    "You can buy calculus questions which double your money." +  "\n" +
    "However if you get it wrong then you will lose all your money." + "\n" + "Start making money by clicking spacebar"  +  "\n" + "GOOD LUCK CEO!", width/2, 150);
    Instructions.display();
    break;
  case 4: // play screen
  background(0);
  if(c.Money ==150){
       currentScreen = 5;
       fade =255;
    }
   display();
   //Worker.display();
  break;
  case 5:
  background(0);
  textSize(15);
  fill(255);
  
  text("First Question" + "\n"+" Take the derivative of x^3", width/2, 50);
  Answer1.display();
  Answer2.display();
  Answer3.display();
  break;
  }
  // Draw the fade effect
  fill(0, 0, 0, fade);
  rect(0, 0, width, height);

  // Update the fade effect
  if (fade > 0) {
    fade -= 5;
  }
}
public void mouseClicked(MouseEvent event) {
  // Handle mouse clicks on buttons
  if (currentScreen == 0) {
    if (playButton.isMouseOver()) {
      currentScreen =3;
      fade = 255;
    } else if (addQuestionButton.isMouseOver()) {
      currentScreen = 1;
      fade = 255;
    } else if (reportButton.isMouseOver()) {
      // Clicked the Report button
      currentScreen = 2;
      fade = 255;
    }
  } else if(currentScreen == 3){
    if(Instructions.isMouseOver()){
        currentScreen =4;
      fade = 255;
    }
  }else if(currentScreen ==4){
    
    //if(Worker.isMouseOver()){
    //  fill(255);
    //  c.Money ++;
    //  // delay(2000);
    //}
  }else if (currentScreen ==5){
    if(Answer1.isMouseOver()){
      c.Money =0;
      currentScreen =4;
    }else if (Answer2.isMouseOver()){
    c.Money =2*c.Money;
      currentScreen =4;
    }else if(Answer3.isMouseOver()){
        c.Money =0;
      currentScreen =4;
    }
  }
}
void keyPressed(){
  if(currentScreen ==4){  
  if (key == ' '){
      c.Money ++;
      
    }
  }
}
void display() {
    fill(255);
    rect(0, 0, width, 100);
    textSize(25);
    fill(0);
    text("Money: "+ c.Money + " Upgrade " + c.Upgrade + " Rate of money per second " + c.rateOfMoney, width/2, 50);
  }
