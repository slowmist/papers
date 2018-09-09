pragma solidity ^0.4.24;
contract Test{
    uint totalSupply = 1e18;
    mapping(address => uint) balance;
    event TransferTo(address to,uint value);
    constructor() public {
        balance[msg.sender] = totalSupply;
    }
    function transferTo(address _to,uint _value) public returns(uint8){
        balance[msg.sender] -= _value;
        balance[_to] += _value;
        emit TransferTo(_to,_value);
    }
    function BalanceOf(address _owner) view  returns(uint){
        return balance[_owner];
    }
}
