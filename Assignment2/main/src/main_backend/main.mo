import HashMap "mo:base/HashMap";
import Principal "mo:base/Principal";
import Text "mo:base/Text";
import Nat "mo:base/Nat";

actor {
    // Challenge 1: Check if the caller is anonymous
    public shared (msg) func is_anonymous() : async Bool {
        return Principal.isAnonymous(msg.caller);
    };

    // Challenge 2: Create a HashMap to store favorite numbers per user
    let favoriteNumber = HashMap.HashMap<Principal, Nat>(0, Principal.equal, Principal.hash);

    // Challenge 3: Function to add favorite number
    public shared (msg) func add_favorite_number(n : Nat) : async () {
        favoriteNumber.put(msg.caller, n);
    };

    // Challenge 3: Function to retrieve favorite number
    public shared (msg) func show_favorite_number() : async ?Nat {
        return favoriteNumber.get(msg.caller);
    };

    // Challenge 4: Prevent duplicate registrations and give feedback
    public shared (msg) func add_favorite_number_safe(n : Nat) : async Text {
        switch (favoriteNumber.get(msg.caller)) {
            case (?_) { return "You've already registered your number"; };
            case null {
                favoriteNumber.put(msg.caller, n);
                return "You've successfully registered your number";
            };
        };
    };
}
