pragma solidity ^0.4.18;
pragma experimental ABIEncoderV2;

contract BCCamp {
    
    struct User {
        address _address;
        string name;
        uint age;
        bool isEnjoying;
    }
    
    mapping (address => User) userStructs;
    
    address[] public userAddresses;
    
    function addStudent(address _address, uint age, string name, bool isEnjoying) {

    var student = userStructs[_address];
    
    
    student._address = _address;
      student.age = age;
     
      student.name = name;
      
      student.isEnjoying = isEnjoying;
      
      userAddresses.push(msg.sender);
    }
    
    function getStudent(address _address) public view returns (User){
        return userStructs[_address];
    }
    
    
    function getStudents() public view returns (address[]) {
       return userAddresses;
    }
    
    function countStudents() view returns (uint) {
        return userAddresses.length;
    }
    
    
    
}