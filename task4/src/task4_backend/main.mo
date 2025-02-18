actor {

  public func contains<A>(arr : [A], n : A, f : (A, A) -> A) : async Bool {
    Option.isSome(Array.find<A>(arr,func(x){f(x,a)}))
    
  };
};
