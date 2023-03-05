// Alon Galili || JANUARY 2
import java.util.Scanner;
Scanner name = new Scanner(System.in);

void setup() {
  background(0);
  size(800, 800);
}

void draw() {
 fill(255);
 textSize(128);
  text("what is your CEO name?", width/2, height/2);
  String Name = name.nextLine();
  text("Is this the name you wanted" + name + " Y/N", width/2, height/2);
  
}
