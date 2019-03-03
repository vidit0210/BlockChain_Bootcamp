pragma solidity ^0.4.22;

contract EtherStore{
    uint256 public withdrawalLimit = 1 ether;
    mapping(address => uint256) public lastwithdrawalTime;
    mapping(address=>uint256) public balances;
    
    function depositfunds() public payable{
        balances[msg.sender]+=msg.value;
    }
    
    function withdrawFunds(uint256 _weiToWithdraw) public {
        require(balances[msg.sender]>=_weiToWithdraw);
        //Limit the withdraw
        require(_weiToWithdraw <= withdrawalLimit);
        require(now>=lastwithdrawalTime[msg.sender] + 1 weeks);
        require(msg.sender.call.value(_weiToWithdraw)());
        balances[msg.sender]-=_weiToWithdraw;
        lastwithdrawalTime[msg.sender]=now;
    }
    
    
}