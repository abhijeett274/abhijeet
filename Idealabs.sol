pragma solidity ^0.5.1;

contract Idealabs {
    
   string fName;
   uint age;

event  Event(string fname,uint age);


   function setInstructor(string memory _fName, uint _age) public {
       fName = _fName;
       age = _age;
     
       emit Event (_fName,_age);

   }
   
   function getInstructor() view public returns (string memory, uint) {
       return (fName, age);
   }
   
}