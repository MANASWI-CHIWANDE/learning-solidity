pragma solidity ^0.8.0;

contract  HotelRoom{
    //vacant or occupied 
    enum Statuses{ 
        Vacant , 
        Occupied
    }
    //enum has the options that never gonna change. Its perfect for keeping track of statuses
    Statuses public currentStatus;

    //to get history of event that took place 
    event Occupy(address _occupant, uint _value);

    //payable is a modifier that allows the address receive digital cryptocurrenecy
    address payable public owner;

    constructor(){
        owner = payable(msg.sender);
        currentStatus = Statuses.Vacant;
        //msg is a global variable inside solidity
        // sender is a property on that msg that tells us who is calling this function 
    }

    modifier onlyWhileVacant{
        require(currentStatus == Statuses.Vacant,"Currently occupied");
        // require function check whether the statement is true or false
        _;
    }

    modifier costs(uint _amount){
        require(msg.value >= _amount, "Not enough ether provided") ;
        _;
    }

    function book() public payable onlyWhileVacant costs(2 ether) {
        
        currentStatus = Statuses.Occupied;
        owner.transfer(msg.value);
        (bool sent ,bytes memory data) =  owner.call{value:msg.value}("");
        require(true);
        //msg.value is the amount of ether when cryptocurrency send in

        emit Occupy(msg.sender,msg.value);
    }
}