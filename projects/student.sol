//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;
 enum status{pending,pass,fail}
contract Student{
    struct students{
        uint id;
        string name;
        uint marks; 
        status result;  
    }
   
    mapping(uint=>students) public list;
    function add(uint id,string memory name,uint marks)public
    {

        status result;
        if(marks>35){
        result=status.pass;}
        else {
        result=status.fail;}
        list[id]=students(id,name,marks,result);

    }
    function get(uint id)public view returns(uint ,string memory ,uint ,status ){
        students memory s=list[id];
        return (s.id,s.name,s.marks,s.result);
}
function remove(uint id)public{
    delete list[id];
}
}