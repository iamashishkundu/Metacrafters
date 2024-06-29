// SPDX-License-Identifier: MIT

/*
Only contract owner should be able to mint tokens
Any user can transfer tokens
Any user can burn tokens
*/

pragma solidity ^0.8.20; 

contract MyToken {
    string public name = "ASHISH";
    string public symbol = "ASH";
    uint256 public totalSupply;
    address public owner;

    mapping(address => uint256) public balanceOf;
    

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Caller is not the owner");
        _;
    }


    function mint(address to, uint256 value) public onlyOwner returns (bool) {
        totalSupply += value;
        balanceOf[to] += value;
        return true;
    }

    function transfer(address to, uint256 value) public returns (bool) {
        require(balanceOf[msg.sender] >= value, "Insufficient balance");
        balanceOf[msg.sender] -= value;
        balanceOf[to] += value;
        return true;
    }

     function burn(uint256 value) public returns (bool) {
        require(balanceOf[msg.sender] >= value, "Insufficient balance");
        balanceOf[msg.sender] -= value;
        totalSupply -= value;
        return true;
    }


}
