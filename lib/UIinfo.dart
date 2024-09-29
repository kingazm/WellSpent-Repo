class UIinfo {
  int _coins = 0;
  String _name = "";

  UIinfo(int coins, String name) {
    this._coins = coins;
    this._name = name;
  }

  int getCoins() {
    return this._coins;
  }

  String getName() {
    return this._name;
  }

  void setCoins(int newCoins) {
    this._coins = newCoins;
  }
}

//to make _coins and _name transferable between the files in the future, 
//to simplify updating the UI