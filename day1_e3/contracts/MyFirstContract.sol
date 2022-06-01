pragma solidity ^0.8.7;

contract MyFirstContract {

   uint256 number = 0;

   function changeNumber(uint256 _num) public {
       number = number + _num;
   }

   function addNumbers(uint _num1, uint _num2) public {
       number = _num1 + _num2;
   }   

   function getNumber() public view returns (uint256){
       return number;
   }

   function getNumberMultiplied(uint _num) public view returns (uint256){
       return (_num * number);
   }   

}