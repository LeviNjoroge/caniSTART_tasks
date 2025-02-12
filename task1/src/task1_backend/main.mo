actor {
  public func add(num1 : Int, num2 : Int) : async Int {
    return num1 + num2;
  };
  
  public func subtract(num1 : Int, num2 : Int) : async Int {
    return num1 - num2;
  };
  
  public func multiply(num1 : Int, num2 : Int) : async Int {
    return num1 * num2;
  };
  
  public func divide(num1 : Int, num2 : Int) : async ?Int {
    if (num2 == 0) {
      return null;
    } else {
      return ?(num1 / num2);
    };
  };
  
  public func modulo(num1 : Int, num2 : Int) : async Int {
    return num1 % num2;
    };

};
