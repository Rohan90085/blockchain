//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;
contract K{
    bytes32 private password;
    constructor(uint _password) {
        password=keccak256(abi.encodePacked(_password));}
        function validation(uint _passwordd)public view returns(bool){
            return keccak256(abi.encodePacked(_passwordd))==password;
        }
}