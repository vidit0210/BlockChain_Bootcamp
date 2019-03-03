pragma solidity  ^0.4.22;

contract MyFirstContract{
    string  public name;
    uint public age;
    
    function setName(string _name) public {
        name=_name;
    }
    function setAge(uint _age) public {
        age = _age;
    }
    
}