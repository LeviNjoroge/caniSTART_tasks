actor challange1{
  public func divide(num1 : Nat, num2 : Nat) : async Bool {
    if(num1 % num2 == 0){
      return true;
    }
    else {
      return false;
    }
  };
};
