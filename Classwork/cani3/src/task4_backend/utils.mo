import Option "mo:base/Option";
import Array "mo:base/Array";
module {
    // public func contains<A>(arr : [A], a : A, f : (A, A) -> Bool) : async Bool {
    //     return Option.isSome{Array.find<A>(arr,func(x){f(x,a)})};
    //     };

    public func squared (arr:[Nat]) : async [Nat]{
        // var arr2: [Nat] = [];
        // for(item in arr.vals()) {
        //     item *= item
        //     arr2 := Array.append<Nat>(arr2, [item])
        // };

    return Array.map<Nat, Nat>(arr, func(x){x*x});

    };
};