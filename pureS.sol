// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract View {
    uint public k;

    function p() view public returns (uint256, uint256) {
        // k = 1; // State variable cannot be modified (Error)

        uint p1 = 2; 
        uint p2 = 3; 
        uint p3 = p1 + p2; // Local variables can be modified

        return (p3, k);
    }
}(gives error bcz we are usiing the state variable)
---------------------comment before use-------------------
Purpose: Used to see the state variables but you cannot update them.
​Local Variables: You can change the local variables and update them.
​EVM Interaction: In the EVM, view calls use STATICCALL, which prevents state modification.
​Gas Consumption:
​There is no gas required when calling from an external source (like MetaMask or a frontend using call()).
​If called from another contract, then gas is needed.