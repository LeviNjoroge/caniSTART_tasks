
import Array "mo:base/Array";


actor {
  type Living = {
    #Animal;
    #Plant;
    #Human : {
      id : Living;
      name : Text;
      age : Nat;
      weight : Nat;
      status : ?Status;
    }
  };
  type Status = {
    #Rich;
    #Poor;
    #MIddleClass;
  };

  public type Person = {
    id : Living;
    name : Text;
    age : Nat;
    weight : Nat;
    status : ?Status;
  }
  
  
};
