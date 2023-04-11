pragma solidity ^0.8.0;

contract LoopCondn{
    //loops 
    //conditional
    uint [] public arr= [1,2,3,5,6,7,9];


    address public owner;

    constructor(){
        owner = msg.sender;
    }
    function isEvenNumber(uint _number) public view returns(bool){
        if(_number%2==0){
            return true;
        }
        else {
            return false;
        }
    }

    function countEvenNumbers() public view returns(uint){
        uint count =0;
        for(uint i =0;i< arr.length;i++){
            if(isEvenNumber(arr[i])==true)count++;
        }
        return count;
    }
    function isOwner() public view returns(bool){
        return(msg.sender == owner);
    }
}