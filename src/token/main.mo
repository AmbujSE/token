import Principal "mo:base/Principal";
import Text "mo:base/Text";
import HashMap "mo:base/HashMap";
import Nat "mo:base/Nat";

actor Token {
    var owner: Principal = Principal.fromText("njzoj-hvqib-dcrza-svw4l-jzzrf-obj2t-2nzcb-gknuv-7wvne-j6sgo-rqe");
    var totalSupply : Nat = 1000000000;
    var symbol : Text = "DAMB";

    var balances = HashMap.HashMap<Principal, Nat>(1, Principal.equal, Principal.hash);

    balances.put(owner, totalSupply);

    public query func balanceOf(who: Principal): async Nat {

        let balance : Nat = switch (balances.get(who)) {
        case null 0;
        case (?result) result;
        };

        return balance;
    }

};