pragma solidity ^0.4.0;
contract exercise {
   uint public balance;
   string  name= "Sara";
   int[] public nums=[1,2,3];
   function setBalance(uint x) public {
       balance = x;
   }
   
   function getBalance() public view returns (uint) {
       return balance;
   }
   
   function getName() public view returns (string) {
       return name;
   }
   
    function getInfo() public view returns (string) {
        return getName();
    }
    
    
   
   function doubleBalance() public  returns (uint) {
       balance = 2 * balance;
       return balance;
   }

}