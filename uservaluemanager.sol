//Write a smart contract with a constructor that initialize a state variable owner and a mapping value create a modifier to restrict a public function to set user value only to the owner which updates user values for a given address
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
contract UserValuemanager{
    address public owner;
    mapping(address => uint256) public userValue;
    constructor(){
        owner =msg.sender;
    }
    modifier onlyOwner(){
        require(msg.sender == owner,"Not the contract owner");
        _;
    }
    function setUserValue(address _user, uint256 _value)public payable onlyOwner{
         userValue[_user] = _value;

    }
}