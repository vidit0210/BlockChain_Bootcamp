pragma solidity  ^0.4.22;
//Inheritance
contract Bank{
    uint private value;
  //  uint public value;
   
    constructor(uint amount)public   {
        value=amount;
    }
    function deposit(uint amount) public {
        value+=amount;
    }
    function withdrwal(uint amount) public {
        value-=amount;
    }
    
}

contract MyFirstContract is Bank(10){
    string  public name;
    uint public age;
    function setName(string _name) public {
        name=_name;
    }
    function setAge(uint _age) public {
        age = _age;
    }
    
}