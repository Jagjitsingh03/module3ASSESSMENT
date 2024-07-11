# Project Title
FreeBIRD Token Smart Contract

# Description:

The FreeBIRD Token Smart Contract is a Solidity-based blockchain application designed to manage a custom ERC20 token called FreeBIRD (FB).
The contract includes functionalities for token minting, burning, and transfer, along with administrative controls such as pausing 
and destruction of the contract. It ensures that only the contract owner can perform sensitive operations, maintaining security and integrity.

## Getting Started

### Prerequisites
- Solidity 0.8.18
- Node.js and npm
- Hardhat.

### Installing
1. **Clone the repository**
   ```bash
   git clone [GitHub Repository Link]
   cd FreeBIRD-Token-Smart-Contract   
# Install dependencies
  npm install

# Executing Program

1.Compile the contract
 npx hardhat compile

2.Deploy the contract to a network
npx hardhat run scripts/deploy.js --network <network-name>

3.Run Hardhat console for interaction
npx hardhat console --network <network-name>

# Configuration
Ensure you have the necessary Ethereum network connection and API keys configured in your environment variables. For issues with deployment or contract interaction, check the Hardhat documentation or Solidity best practices.

# Contract Details

FreeBIRD Token (FB)
Name: freeBIRD
Symbol: FB
Total Supply: Managed via minting and burning functions
Owner: The contract deployer

Functions
getTokenInfo: Retrieve token information (name, symbol, total supply)
pause: Pause contract operations (only owner)
unpause: Unpause contract operations (only owner)
destroy: Destroy the contract (only owner)
mint: Mint new tokens to the owner's address (only owner)
burn: Burn tokens from a specified address
transfer: Transfer tokens between addresses


# Help

For any issues, consult the following resources:

Hardhat Documentation
Solidity Documentation
Ethereum Stack Exchange

Ensure you have the necessary Ethereum network connection and API keys configured in your environment variables.
For issues with deployment or contract interaction, check the Hardhat documentation or Solidity best practices.


# Authors:
Jagjit Singh 

# License:
This project is licensed under the MIT License - see the LICENSE.md file for details.

