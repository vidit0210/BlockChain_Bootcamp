pragma solidity ^0.4.22;
//Transactions
contract Transaction{
    event sender(address);
    event amount(uint);
    address private owner;
    constructor() public {
        owner=msg.sender;
    }
    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
    
    modifier RequiredValue{
        assert(msg.value >=1 ether);
        _;
    }
    function topay() payable onlyOwner RequiredValue{
        sender(msg.sender);
        amount(msg.value);
    }
    
}