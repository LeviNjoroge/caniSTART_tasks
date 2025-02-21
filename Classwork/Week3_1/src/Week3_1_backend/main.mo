import HashMap "mo:base/HashMap";
import Principal "mo:base/Principal";
import Cycles "mo:base/ExperimentalCycles";
// cycles , principals,  stable storage
// reverse gas model - ethereum , cycles - gas , canisters - smart contract 100,000,000,000 cycles
// Principals - canisters - canister id - server ip address , wallet - ip address , users 

actor Main {
 stable var name ="mahmud";
  //anonymous principals - "2vxsx-fae"
 public shared(msg) func whoami() : async Principal {
   let principal_caller = msg.caller;
   return principal_caller;
 };
 public func change_name(arg : Text) : async Text {
  name:=arg;
  return name;
 };
 public func what_is_my_name() : async Text {
  return name;
 };

 let anonymous_principal : Principal = Principal.fromText("2vxsx-fae");
    let users = HashMap.HashMap<Principal, Text>(0, Principal.equal, Principal.hash);
    users.put(anonymous_principal, "This is the anonymous principal");

    public func test() : async ?Text {
        return(users.get(Principal.fromText("2vxsx-fae")));
    };
    public shared({caller}) func insert() :  async  (){
      users.put(caller,"this is my caller")
    };
   var age = 64;
    public func pay_to_access() : async Text {
        if(Cycles.available() < 100_000) {
            return("This is not enough, send more cycles.");
        }

        let received = Cycles.accept(AMOUNT_TO_PAY);
        return("Thanks for paying, you are now a premium user 😎");
    };

};