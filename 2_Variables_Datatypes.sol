pragma solidity ^0.8.0;

contract Variables_Datatypes{
    //STATE VARIABLE
    int public myint  =111;// int types int , int256,int8
    // int has various size because we look about the size of variable to put on blockchain

    uint public myUint = 1;
    uint256 public myUnint256 = 11;
    uint8 public myUint8  = 10;

    string public mystring = "hi , I am a girl ";
    bytes32 public myBytes32 = "Hello World!";

    // to locate my address in blockchain
    address public myAddress = 0xd2a5bC10698FD955D1Fe6cb468a17809A08fd005; 

    // we can use struct to create datatype with complex and multiple objects
    struct myStruct{
        uint a;
        string s;
    }
    myStruct public ms = myStruct(11,"hieeeee cutiee");


    //LOCAL VARIABLE
    function getValue() public pure returns(uint){
        // we use pure because it just returns datatype
        uint value=1;
        return value;
    }
}