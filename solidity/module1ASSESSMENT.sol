// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ExampleContract {
    address public owner;
    uint256 public balance;

    constructor() {
        owner = msg.sender; // Set the contract deployer as the owner
        balance = 0;
    }

    // Function to deposit Ether into the contract
    function deposit() public payable {
        require(msg.value > 0, "Deposit value must be greater than 0");
        balance += msg.value;
    }

    // Function to withdraw Ether from the contract
    function withdraw(uint256 amount) public {
        require(msg.sender == owner, "Only the owner can withdraw");
        require(amount <= balance, "Insufficient balance");

        balance -= amount;
        payable(owner).transfer(amount);
    }

    // Function to perform some calculations
    function calculate(uint256 a, uint256 b) public pure returns (uint256) {
        uint256 result = a + b;
        assert(result >= a); // Assert that there is no overflow
        return result;
    }

    // Function to demonstrate revert statement
    function willRevert() public pure {
        revert("This function always reverts");
    }
}
