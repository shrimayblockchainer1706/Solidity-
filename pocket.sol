//write a function send pocket money that transfer 0.01 using transfer function
// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.20;
contract PocketMoney{
    receive() external payable {}
    function sendPocketMoney(address payable _receiver)public{
        uint amount = 0.01 ether;
        require(address(this).balance >=amount, "Insufficient balance");
        _receiver.transfer(amount);
    }

}
