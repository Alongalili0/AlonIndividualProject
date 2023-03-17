// Alon Galili || JANUARY 2


int currentScreen = 0; // 0 = home, 1 = add questions, 2 = report
int fade = 255; // fade effect
String[] lines;
Button playButton;
Button addQuestionButton;
Button reportButton;
Button Instructions;
PFont font;
CEO c;

import java.util.Scanner;
Scanner name = new Scanner(System.in);
// Variable to store text currently being typed
String typing = "";

// Variable to store saved text when return is hit
String saved = "";

void setup() {
  background(0);
  size(800, 600);
  font = createFont("Arial",32);
  textFont(font);
  c = new CEO();
   playButton = new Button(this, "Play", new PVector(200, 100), new PVector(400, 100));
   addQuestionButton = new Button(this, "Add Questions", new PVector(200, 250), new PVector(400, 100));
   reportButton = new Button(this, "Report", new PVector(200, 400), new PVector(400, 100));
   Instructions = new Button(this, "Understand",new PVector(200, 500), new PVector(400, 100));
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
  case 3: // play screen
    textAlign(CENTER);
    textSize(15);
    fill(255);
    text("Instructions: The goal of the game is to get to 1 Million Dollars in your Tycoon." +
    "You can buy calculus questions which double your money." +
    "However if you get it wrong then you will lose all your money. GOOD LUCK CEO!", width/2, 150);
    c.display();
    Instructions.display();
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
      // Clicked the Play button
      // TODO: Implement play functionality
    } else if (addQuestionButton.isMouseOver()) {
      // Clicked the Add Questions button
      currentScreen = 1;
      fade = 255;
    } else if (reportButton.isMouseOver()) {
      // Clicked the Report button
      currentScreen = 2;
      fade = 255;
    }else if(currentScreen ==3){
        c.Money ++;
    }

  background(0);
 fill(255);                
 textSize(25);
   text("what is your CEO Name? " + typing,25,190);
  CEO c = new CEO(saved);
  c.display();
}
void keyPressed() {
  // If the return key is pressed, save the String and clear it
  if (key == '\n' ) {
    saved = typing;
    // A String can be cleared by setting it equal to ""
    typing = ""; 
  } else {
    // Otherwise, concatenate the String
    // Each character typed by the user is added to the end of the String variable.
    typing = typing + key; 

  }
}
