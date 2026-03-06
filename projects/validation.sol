//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;
contract Val{
    uint public x=0;
    address public owner;
    bool public locked;
    constructor(){
        owner=msg.sender;
    }
    modifier onlyOwner(){
        require(msg.sender==owner,"u r not owner");
        _;
    }
    // modifier validate(address adr){
    //     require(adr!=address(0),"no addresss");
    //     _;
    // }
    function changeowner(address _new)public onlyOwner {//validate(_new)
        owner=_new;
    }
}