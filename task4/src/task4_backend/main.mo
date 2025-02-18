import Utils "utils";
import Array "mo:base/Array";


actor {
     public func squared (arr:[Nat]) : async [Nat]{
        // var arr2: [Nat] = [];
        // for(item in arr.vals()) {
        //     item *= item
        //     arr2 := Array.append<Nat>(arr2, [item])
        // };

    return Array.map<Nat, Nat>(arr, func(x){x*x});

    };
};
