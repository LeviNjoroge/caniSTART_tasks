import Principal "mo:base/Principal";

actor {
    public func is_anonymous() : async Bool {
        return Principal.equal(msg.caller, Principal.anonymous());
    };
}
