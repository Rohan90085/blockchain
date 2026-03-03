
//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;
contract K{
    uint8 public k=9;
    function u()public returns(uint8) {
        k=k+1;
        return k;
    }
    function V() public view returns(uint8,uint) {
        uint o=9;
        
        return(k,o);

    }
    function P()public pure returns(uint n,uint s) {
        uint a=10;
        uint b=10;
        
        return(a,a+b); 
        }
     
     
    
}
-------------------------------
view pure public all at once-3/3/2026