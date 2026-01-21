//write a payable function donate that allows user to send ether store the total donated amount in a variable
// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.20;
contract Donate{
    uint256 totalDonated;
    function donate() payable public {
        require(msg.value >0,"Donation must be greater than 0");
        totalDonated += msg.value;
    }
}
