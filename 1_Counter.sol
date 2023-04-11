pragma solidity ^0.8.0;// to tell ide the version of solidity
 
contract Counter {
    //to declare a variable 
    uint count;// unsigned variable

    constructor () public{
        count=0;
        //when ever contract is deployed on blockchain or run ,
        //the constructor function runs only once
    } 
    function getCount()public returns(uint){
        return count;
        //this is a read function 
        //in solidity read function doesnt cost gas
    }
    function setCount()public{
        count++;
        //this is a write function 
        //in solidity write function cost gas
    }
}