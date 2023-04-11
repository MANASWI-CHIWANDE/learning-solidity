pragma solidity ^0.8.0;

//inheritance
//Factories
//Interaction


contract Ownable{
    address owner ;
    modifier OnlyOwner(){
        require(msg.sender == owner,"must be owner.");
        _;
    }

    constructor() public{
        owner = msg.sender;
    }

}

contract SecretVault{
    string secret;
    constructor(string memory _secret) public{
        secret= _secret;
    }

    function getSecret() public view returns (string memory){
        return secret;
    }
}

// here Mycontract is a factory that creates multiple contracts
contract MyContract is Ownable{ 
    
    address secretvault;
    constructor(string memory _secret) public{
        SecretVault _secretVault = new SecretVault(_secret);
        secretvault = address(_secretVault);
        super;//calls constructor from teh parent contarct

    }

    function getSecret() public OnlyOwner view returns (string memory){
        return SecretVault(secretvault).getSecret();
    }
    
    
}