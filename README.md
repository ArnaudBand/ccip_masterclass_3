# Cross-Chain NFT Project

## Overview

The Cross-Chain NFT Project is a decentralized application (dApp) built using Solidity and Foundry. It enables users to mint, transfer, and manage Non-Fungible Tokens (NFTs) across multiple blockchain networks, providing a seamless and interoperable NFT experience.

## Features

- **Cross-Chain Minting**: Mint NFTs on one blockchain and seamlessly transfer them to another.
- **Interoperability**: Allows NFTs to operate across different blockchain networks such as Ethereum, Binance Smart Chain, and Polygon.
- **Security**: The smart contracts are designed with security best practices and have undergone rigorous testing.
- **Optimized for Efficiency**: Smart contracts are optimized to minimize gas fees, ensuring scalability across multiple chains.
- **User-Friendly**: Provides a straightforward interface for minting and transferring NFTs.

## Tech Stack

- **Smart Contracts**: Solidity
- **Testing & Deployment**: Foundry
- **Blockchain Networks**: Ethereum Sepolia, Arbittrum Sepolia
- **Oracles**: Chainlink
- **Frontend**: Optional (React, Next.js)

## Installation

### Prerequisites

- Foundry: [Install Foundry](https://book.getfoundry.sh/getting-started/installation)
- Metamask Wallet

### Clone the Repository

```bash
git https://github.com/ArnaudBand/ccip_masterclass_3
cd ccip_masterclass_3
```


### Install Foundry

Make sure you have Foundry installed. If not, follow these steps:

```bash
curl -L https://foundry.paradigm.xyz | bash
foundryup
```

### Compile Smart Contracts

Compile your Solidity contracts using Foundry:

```bash
forge build
```

### Run Tests

Run the tests to ensure everything is working correctly:

```bash
forge test
```

### Deploy Smart Contracts

Configure your deployment settings in `script/Deploy.s.sol`. Then deploy to your preferred network:

```bash
forge script script/Deploy.s.sol --rpc-url <YOUR_RPC_URL> --private-key <YOUR_PRIVATE_KEY> --broadcast
```

Replace `<YOUR_RPC_URL>` with your node's RPC URL (e.g., Infura, Alchemy) and `<YOUR_PRIVATE_KEY>` with your private key.

### Deploy Verification (Optional)

If you want to verify your contracts on Etherscan:

```bash
forge verify-contract --contract <CONTRACT_PATH:CONTRACT_NAME> --chain-id <CHAIN_ID> --etherscan-api-key <YOUR_API_KEY>
```


## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgements

- [Foundry](https://getfoundry.sh/) for testing and deployment tools.
- [Chainlink](https://chain.link/) for providing decentralized oracles.
- [OpenZeppelin](https://openzeppelin.com/) for secure Solidity libraries.

## Contact

For any inquiries or issues, please reach out to [bandonkeyea@gmail.com](mailto:bandonkeyea@gmail.com) or create an issue on this repository.
