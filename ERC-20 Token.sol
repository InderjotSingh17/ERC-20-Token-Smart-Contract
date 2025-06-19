// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyToken {
    string public name = "Ether";
    string public symbol = "ETH";
    uint public totalsupply;
    address public owner;

    mapping(address => uint) public balanceof;

    constructor(uint _initialsupply) {
        owner = msg.sender;
        totalsupply = _initialsupply;
        balanceof[msg.sender] = totalsupply;
    }

    modifier onlyowner() {
        require(msg.sender == owner, "not owner");
        _;
    }

    function transfer(address _to, uint _value) public returns (bool) {
        require(balanceof[msg.sender] >= _value, "Insufficient balance");
        balanceof[msg.sender] -= _value;
        balanceof[_to] += _value;
        return true;
    }

    function mint(address _to, uint _value) public onlyowner returns (bool) {
        uint amount = _value;
        balanceof[_to] += amount;
        totalsupply += amount;
        return true;
    }

    function burn(uint _value) public returns (bool) {
        require(balanceof[msg.sender] >= _value, "Not enough tokens to burn");
        balanceof[msg.sender] -= _value;
        totalsupply -= _value;
        return true;
    }
}
