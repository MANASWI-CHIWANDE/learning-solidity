pragma solidity ^0.8.0;

contract Mappings{
    // maps are datatypes that allows us to store data on blockchain with key-value pairs
    mapping(uint => string) names;
    mapping(uint => Book) public books;
    //nested mapping
    mapping(address =>mapping(uint => Book)) public myBooks;


    struct Book{
        string title;
        string author;
    }
    constructor() public{
        names[1]= "Chetan";
        names[2]="Manaswi";
        names[3]= "Darshan";
    }

    function addBook(uint _id,string memory _title,string memory _author) public{
        books[_id]=Book(_title,_author);
    }
    function addMyBook(uint _id,string memory _title,string memory _author) public{
        myBooks[msg.sender][_id]=Book(_title,_author);
        // what is msg.sender? well solidity has global variable called 
        //as message so msg has some value as sender. So that will be there address
    }
}