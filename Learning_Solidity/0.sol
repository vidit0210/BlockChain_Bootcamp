//Data types;

pragma solidity ^0.4.22;

contract DataTypes {
    
    bool myBool = false;
    
    int8 myInt = -128;
    uint8 myUInt = 255;
    
    string myString;
    uint8[] myStringArr;

    bytes myValue;
    bytes1 myBytes1; 
    bytes32 myBytes32;
    

    enum Action {ADD, REMOVE, UPDATE}
    
    Action myAction = Action.ADD;
    
    address myAddress;
    
    function assignAddress() public {
        myAddress = msg.sender;
        myAddress.balance;
        myAddress.transfer(10);
    }
    
    uint[] myIntArr = [1,2,3];
    
    function arrFunc() public {
        myIntArr.push(1);
        myIntArr.length;
        myIntArr[0];
    }
    
    uint[10] myFixedArr;
    
    struct Account {
        uint balance;
        uint dailyLimit;
    }
    
    Account myAccount;
    
    function structFunc() public {
        myAccount.balance = 100;
    }
    
    mapping (address => Account) _accounts;
    mapping(address => uint) balances;
}