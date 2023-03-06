// Alon Galili || JANUARY 2
import java.util.Scanner;
Scanner name = new Scanner(System.in);
// Variable to store text currently being typed
String typing = "";

// Variable to store saved text when return is hit
String saved = "";

void setup() {
  background(0);
  size(800, 800);
}

void draw() {
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
