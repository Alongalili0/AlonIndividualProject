public class Button {
  PApplet parent;
  String label;
  PVector position;
  PVector size;

  Button(PApplet parent, String label, PVector position, PVector size) {
    this.parent = parent;
    this.label = label;
    this.position = position;
    this.size = size;
  }

  void display() {
    parent.fill(255);
    parent.stroke(0);
    parent.rect(position.x, position.y, size.x, size.y);

    parent.fill(0);
    textSize(25);
    parent.textAlign(CENTER, CENTER);
    parent.text(label, position.x + size.x/2, position.y + size.y/2);
  }

  boolean isMouseOver() {
    return (
      mouseX >= position.x && mouseX <= position.x + size.x &&
      mouseY >= position.y && mouseY <= position.y + size.y
      );
  }
}
