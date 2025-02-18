actor challange1{
  public func divide(n : Nat, m : Nat) :async Bool {
  if(m==0){
    return false;
  }
  else{
    if(n % m == 0){
      return true;
    }
    else {
      return false;
    }
  }

    //or, a shorter version:
    // return (n % m == 0);
  };

public func is_even(n : Nat) : async Bool {
  return (n%2==0);
};

//fx calles sum_of_array
//takes an array of natural numbers 
// returns the sum
//return 0 of array is empty
public func sum_of_array(arr : [Nat]) : async Nat {
  var sum : Nat = 0;
  for(item in arr.vals()) {
    sum+=item;
  };
  return sum;
};
}
