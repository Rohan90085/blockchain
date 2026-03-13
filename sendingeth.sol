// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract bank{
    
    receive() external payable {}
    fallback() external payable {}
    function getbalance() public view returns(uint){
        return address(this).balance;
    }
}
contract send{
    function t(address payable to)public payable{
        to.transfer(msg.value);
    }
    function s(address payable to)public payable{
        to.send(msg.value);
    }
    function c(address payable to)public payable{
        to.call{value:msg.value}("");
    }
}