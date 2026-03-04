// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract A{
    uint public a;
    constructor(uint _a){
        a=_a;
    }
}
contract B{
    uint public b;
    constructor(uint _b){
        b=_b;
    }
}
contract C is A(5),B(5){}
contract D is A,B{
    constructor(uint _aa,uint _bb)A(_aa)B(_bb){}
}
contract E is A,B{
    constructor(uint _a,uint _b)A(_a)B(_b){}
    function vie() public view returns(uint,uint){
return(a,b);
    }
}
// contract F is A,B{
//     function input(uint _a,uint _b)public{
//         a=_a;
//         b=_b;
        
//     }
// }
contract F is A, B {

    constructor(uint _a, uint _b)
        A(_a)
        B(_b)
    {

    }

    function updateValues(uint _a, uint _b) public {
        a = _a;
        b = _b;
    }
}
