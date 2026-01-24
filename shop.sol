// Create a contract Shop with a variable shopName. Create a contract Customer that inherits and reads shopName
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
contract Shop{
    string public shopName;
    constructor(){
        shopName ="Nova Store";
    }
}
contract Customer is Shop{
    function getShopiingLocation() public view returns(string memory){
        return shopName;
    }

    }
