actor {

  // let num1 : Int = 34;
  // let num2 : Int = 56;
  public query func acceptInput(number1 :Int, number2: Int) : async (){
    let num1 = number1;
    let num2 = number2;

    func add() : async Int {
      return num1 + num2;
    };
  };
};