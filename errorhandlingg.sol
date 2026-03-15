//SPDX-License-Identifier:MIT


// create one a.sol file ://SPDX-License-Identifier:MIT
// pragma solidity ^0.8.0;
// contract A{
//     uint public k;
//     function validate(uint x)public returns(uint){
//         require(x!=0,"other than zero");
//         return x;
//     }
// }
//------------------------------------------------------------------------------*/

pragma solidity ^0.8.0;


import "./a.sol";

contract B{
    event llog(string);

    A obj = new A();

    function val(uint a) public returns(string memory){

        try obj.validate(a) returns (uint){
            emit llog("ok");
            return "Approved";
        }

        catch{
            emit llog("not approved zero");

            return "Error";
        }

    }

}
//-------------------------------------------------------------------------------------------------------------------
/*try and catch in Solidity are used for error handling when calling external contracts.
If the external function fails (reverts), the catch block executes instead of crashing the whole transaction.

I’ll explain it step-by-step.

1. Why try-catch is used

When a contract calls another contract, the called function may fail because of:

require() failure

revert()

assert()

Out of gas

Invalid operation

Without try-catch, the entire transaction fails.

With try-catch, you can handle the error safely.

2. Basic Syntax
try contract.functionName(parameters) returns(returnVariables) {
    // executed if function succeeds
}
catch {
    // executed if function fails
}
3. Simple Example
Contract A
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract A {

    function divide(uint a, uint b) public pure returns(uint){
        require(b != 0, "Cannot divide by zero");
        return a / b;
    }

}
Contract B
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./A.sol";

contract B {

    A obj = new A();

    function test(uint x, uint y) public returns(string memory){

        try obj.divide(x, y) returns(uint result){
            return "Success";
        }

        catch{
            return "Error occurred";
        }

    }

}
4. Working
Case 1
test(10,2)

Execution:

10/2 = 5

Output

Success
Case 2
test(10,0)

require(b != 0) fails

Output

Error occurred

Instead of crashing the transaction, catch handles it.

5. Types of Catch

Solidity supports three types.

1️⃣ Generic catch
catch {
}

Handles all errors.

2️⃣ Catch Error Message
catch Error(string memory reason){
}

Captures require() error message.

Example:

catch Error(string memory reason){
    return reason;
}
3️⃣ Catch Low-level Error
catch (bytes memory data){
}

Handles low-level errors.

6. Full Example
try obj.divide(x,y) returns(uint result){
    return result;
}
catch Error(string memory reason){
    return 0;
}
catch(bytes memory){
    return 1;
}
7. Important Points (Exam / Interview)

try-catch works only with external contract calls.

Cannot be used for internal function calls.

Helps prevent transaction failure.

Used in cross-contract interaction.

8. Real Blockchain Example

In DeFi protocols, contracts call other contracts like:

DEX

Lending protocol

Oracle

If one fails, try-catch prevents entire protocol failure*/