// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {
    address public owner;
    string public tokenName;
    string public tokenSymbol;
    uint256 public totalSupply;
    bool public paused;
    bool public destroyed;

    mapping(address => uint256) public balances;

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the contract owner can perform this action");
        _;
    }

    modifier whenNotPaused() {
        require(!paused, "Contract is paused");
        _;
    }

    modifier whenPaused() {
        require(paused, "Contract is not paused");
        _;
    }

    modifier whenNotDestroyed() {
        require(!destroyed, "Contract is destroyed");
        _;
    }

    constructor() {
        owner = msg.sender;
        tokenName = "freeBIRD";
        tokenSymbol = "FB";
        totalSupply = 0;
        paused = false;
        destroyed = false;
    }

    // Function to retrieve token information
    function getTokenInfo() public view returns (string memory, string memory, uint256) {
        return (tokenName, tokenSymbol, totalSupply);
    }

    // Function to pause the contract
    function pause() public onlyOwner whenNotPaused {
        paused = true;
    }

    // Function to unpause the contract
    function unpause() public onlyOwner whenPaused {
        paused = false;
    }

    // Function to destroy the contract
    function destroy() public onlyOwner whenNotDestroyed {
        destroyed = true;
    }

    // Function to mint tokens (already implemented)
    function mint(address _address, uint256 _value) public onlyOwner {
        require(_address == owner, "Only the contract owner can mint tokens");
        totalSupply += _value;
        balances[_address] += _value;
    }

    // Function to burn tokens (already implemented)
    function burn(address _address, uint256 _value) public {
        require(balances[_address] >= _value, "Insufficient balance");
        totalSupply -= _value;
        balances[_address] -= _value;
    }

    // Function to transfer tokens (already implemented)
    function transfer(address _from, address _to, uint256 _value) public {
        require(balances[_from] >= _value, "Insufficient balance");
        balances[_from] -= _value;
        balances[_to] += _value;
    }

    // Fallback function to reject any Ether sent to this contract
    receive() external payable {
        revert("This contract does not accept Ether");
    }
}
