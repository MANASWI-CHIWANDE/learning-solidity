pragma solidity ^0.8.0;

contract Arrays{
    //how to declare array
    uint[] public uintArray = [1,2,3];
    string[] public myArray = ["apple","banana","chickoo"];
    string[] public arr;
    uint[][] public array2d = [[1,2,3],[4,5,6]];

    function addValue(string memory val) public{
        arr.push(val);
    }
    function getSizeOfArray() public view returns (uint){
        return myArray.length;
    }
}
