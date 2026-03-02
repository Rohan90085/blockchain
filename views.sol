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
}

(comment it beforeuse)-----------------------------------------------------
View Functions in Solidity
​Usage: Used to see (read) the state variables but you cannot update them.
​Local Variables: You can change local variables and perform updates within the function scope.
​EVM Interaction: In the Ethereum Virtual Machine (EVM), view calls use STATICCALL, which prevents state modification.
​Gas Consumption: * There is no gas required when calling from an external source.
​When called from MetaMask or a frontend using call(), no gas is consumed.
​Note: If a view function is called internally from another contract's function that modifies state, gas will still be required for the transaction
-------------------------------------------------------------------------
Global Variables
​Global variables are special built-in variables.
​Blockchain
​Current Transaction
​Current Block
​Message Sender
​Message/Call Information
​msg.sender \rightarrow address of person calling function
​msg.value \rightarrow Amount of ether sent
​msg.data \rightarrow Complete calldata
​msg.sig \rightarrow Function selector
​Block Information (on Ethereum)
​block.number \rightarrow current block no.
​block.timestamp \rightarrow current block time
​block.chainId \rightarrow Chain ID
​block.gaslimit \rightarrow Gas limit of block
​Transaction Information
​tx.origin \rightarrow original sender of transaction
​tx.gasprice \rightarrow Gas price of transaction
​Execution Flow & Units
​Solidity (global) \rightarrow EVM opcodes \rightarrow EVM \rightarrow executes