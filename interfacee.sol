//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface Student{
    function create(uint id, string memory name) external;
    function remove(uint id) external;
}

contract student is Student{

    mapping(uint => string) public list;

    function create(uint id, string memory name) external override {
        list[id] = name;
    }

    function remove(uint id) external override {
        delete list[id];
    }
}