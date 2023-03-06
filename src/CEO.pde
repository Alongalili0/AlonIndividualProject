// player
class CEO{
  String Name; 
  float Money;
  boolean Upgrade;
  
  CEO (String Name){
  Name = this.Name;
  Upgrade = false;
  Money = 0;
  }
  
  void display(){
    fill(255);
    textSize(25);
     text("Welcome " + Name, width/2 - 137,height/2);
      
  }
}
