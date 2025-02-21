import Prim "mo:prim";
import Principal "mo:base/Principal";

actor {
    public query func is_anonymous() : async Bool {
        let caller = Prim.caller();
        return caller == Principal.anonymous();
    }
}
