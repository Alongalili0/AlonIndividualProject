// player
class CEO {
  float Money;
  boolean Upgrade;
  float rateOfMoney;
  CEO () {

    rateOfMoney = 0;
    Upgrade = false;
    Money = 0;
  }

  void display() {
    fill(255);
    rect(0, 0, width, 100);
    textSize(25);
    fill(0);
    text("Money: "+ Money + " Upgrade " + Upgrade + " Rate of money per second " + rateOfMoney, width/2, 50);
  }
}
