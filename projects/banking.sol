//SPDX-License-Identifier:MIT
 pragma solidity ^0.8.0;
 contract Mappping{
    mapping(uint=>uint)  account;
    function deposit(uint id,uint amount)public{
        account[id]+=amount;
    }
    function withdraw(uint id,uint amount) public  returns(uint){
    require(account[id]>=amount,"there is no that much of money");
        return account[id]-=amount;
    }
    function viewbalance(uint id)public view returns(uint){
        return(account[id]);

    }
    function deleteaccount(uint id)public{
        delete account[id];
    }
 }