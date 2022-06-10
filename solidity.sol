pragma solidity ^0.8;

contract Payables  {

    address public jefe;


    mapping(address=>uint) public donations;

    constructor() {
        jefe = msg.sender;
    }

    function deposit() payable public {
        donations[msg.sender] = msg.value;
    }

    function withdraw( address empleado ) public {
        payable(empleado).transfer(address(this).balance);
    }
}  
