// SPDX-License-identifier:MIT
//1-3-26

pragma solidity ^0.8.0;
contract Ganesha
{
    string public g;
    uint public a;
    // constructor(string memory ga){
    //     g=ga;
    function f_name(string memory v1,uint v2) public{
        g=v1;
        a=v2;

    }

    }
}

--------------------------------------------------------------
[11:19 pm, 01/03/2026] ROHAN: rogramming language used to write smart contracts
Contract oriented, object oriented, statically typed
Simple
Solidity
Copy code
pragma solidity ^0.8.0;

contract Mycontract {
    uint public cash;

    function setNumber(uint num) public {
        number = num;
    }

    function getNumber() public view returns (uint) {
        return number;
    }
}
Datatypes
uint, bool, int, address, bytes
Reference Types
string, arrays, struct, mapping
Example:
Solidity
Copy code
uint[] public numbers;
Access Modifiers
public → everyone
private → only inside contract
internal → inside contract + inherited
external → only outside contract
[11:19 pm, 01/03/2026] ROHAN: Constructor: runs only once during deployment
Global Variables
msg.sender → who called function
msg.value → ether sent
block.timestamp
block.number
Mapping
public → generates getter function
code:
Solidity
Copy code
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Gowsha {
    string public g;

    constructor(string memory val) {
        g = val;
    }
}
[11:20 pm, 01/03/2026] ROHAN: Go to deploy & run
Select deploy → again input first for constructor
Give input → deploy
Pop-up comes
Below deploy variable name will be shown → click to see
By using function
Solidity
Copy code
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract F1 {
    string public name;   // storage
    uint public a;

    function set_name(string memory v1, uint v2) public {
        name = v1;
        a = v2;
    }
}
Deploy after → click on deployed contract
Give variable values clicking on respective state variables
Then click → state variables show
[11:21 pm, 01/03/2026] ROHAN: SPDX → Software package data exchange
MIT → gas saving free to use
^0.8.0 → above 0.8.0 but below 0.9.0
Remix → open source online editor
String memory
Must declared during reference type variables
memory & storage & calldata
Temporary data location (local variable)
Exists only during function execution
Automatically deleted after function finishes
Not saved permanently on blockchain
Inside function used
State variable (storage)
Permanent on blockchain
Click to interact & see the data result
Solidity
Copy code
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Person {
    uint public total;

    function addPerson() public {
        total += 1;
    }
}
Default value
Default value will be shown automatically
Empty "" for string
Solidity
Copy c…function add() public {
    total += 1;
}

function watch() public view returns(uint) {
    return total;
}
Solidity
Copy code
function functionName(parameters) public returns(dataType) {
}
Uses of Functions
Modifying state variables
Emitting events
Creating other contracts
Using selfdestruct
Sending ether via call
Making pure function
Creating custom errors
Using low level call
ABI (Application Binary Interface)
Interface b/w SC & user
JSON file talks about what functions are available
What parameters they take, return values
They are view, pure, payable
Main part of SC
Runs on the Ethereum blockchain