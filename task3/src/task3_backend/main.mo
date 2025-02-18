//take in n : Nat
// return text corresponding to day of the week
// if n doesn't correspond to a day of the week, return null
actor {
  public func day_of_the_week(n : Nat) : async Text {
    if(n > 1 or n < 7) {
      switch(n) {
      case(1) { return "Monday"; };
      case(2) { return "Tuesday"; };
      case(3) { return "Wednesday"; };
      case(4) { return "Thursday"; };
      case(5) { return "Friday"; };
      case(6) { return "Saturday"; };
      case(7) { return "Sunday";};
      };
    }
    else{
      return "null";
    }
  };
};
