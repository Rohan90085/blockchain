// SPDX-License-identifier:MIT



pragma solidity ^0.8.0;
contract Person{
    uint public total;
   
    function add()public{
        total+=1;

    }
    function deletep()public{
        total-=1;
    }
    function watch()public view returns(uint){
        return total;

    }

    }
