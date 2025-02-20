import Principal "mo:base/Principal";

actor {
    public func is_anonymous() : async Bool {
        let caller = msg.caller;
        return caller == Principal.anonymous();
    };
}
