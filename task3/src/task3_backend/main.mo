//take in n : Nat
// return text corresponding to day of the week
// if n doesn't correspond to a day of the week, return null
actor {



  public func day_of_the_week(n : Nat) : async ?Text {
    switch(n) {
      case(1) { 


        ?"Monday"
      };
      case(2) { 


        ?"Tuesday"
      };
      case(3) { 
        ?"Wednesday"
      };
      case(4) { 
        ?"Thursday"
      };
      case(5) { 
        ?"Friday"
      };
      case(6) { 
        ?"Saturday"
      };
      case(7) { 
        ?"Sunday"
      };
      case(_) {
        null
      };
    };
  };
};
