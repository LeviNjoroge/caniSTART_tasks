import Option "mo:base/Option";
import Array "mo:base/Array";
module {
    public func contains<A>(arr : [A], a : A, f : (A, A) -> Bool) : async Bool {
        return Option.isSome{Array.find<A>(arr,func(x){f(x,a)})};
        };

    public func squared (arr:[Nat]) : async [Nat]{
        let arr2: Nat = [];
        for(item in arr.vals()) {
            
        };
    }
};