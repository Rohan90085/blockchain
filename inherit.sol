//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;
contract A{
    uint a=10;
    function aa()public view virtual returns(string memory) {
        return "a";

    }
}
contract B is A{
   // uint a=20;
    function aa()public view override returns(string memory){
        return "b";
    }
}