pragma solidity ^0.4.22;
//Modifiers
interface Regulator{
    function checkValue(uint _amount)  returns (bool);
    function loan()  returns   (bool);
}
contract Bank is Regulator {
    
    uint private value = 20;
    address private owner ;
    
    modifier onlyOwner{
        require(msg.sender ==owner);
        _;
    }
    constructor (uint _amount){
        value = _amount;
        owner =msg.sender;
        
    }
    function deposit(uint _amount) public onlyOwner {
        value+=_amount;
    }
    
    function withdrawl(uint _amount) public{
        if(checkValue(_amount))
        {
        value-=_amount;
        }
    }
    function checkValue(uint _amount) returns(bool){
        return _amount<=value;
    }
    
    function loan() returns(bool){
        return value>0;
    }
}
contract MyFirstContract{
    string public name;
    uint public age;
    function setName(string _name) public{
        name=_name;
    }
    function setAge(uint _age) public {
        age =_age;
    }
}