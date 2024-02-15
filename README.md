# ErrorDemo Smart Contract

This Solidity smart contract implements a simple error demonstration scenario. It showcases the use of `require()`, `revert()`, and `assert()` statements.

## Description

The smart contract allows users to set, increment, and decrement a value. It demonstrates the proper use of `require()`, `revert()`, and `assert()` to handle conditions and errors securely.

## Features

- **Set Value Function:** Users can set a value between 0 and 100.
- **Increment Value Function (`assert`):** Users can increment the value by 1. If the value was 100 before the increment, `assert()` will fail and throw an error.
- **Decrement Value Function (`revert`):** Users can decrement the value by 1. If the value is already 0, `revert()` is used to throw an error.

## Getting Started

### Prerequisites

- Install a Solidity compiler.
- Use Remix, an online Solidity IDE.

### Execution

1. Create a new file in Remix (e.g., `ErrorDemo.sol`).
2. Copy and paste the provided code into the file.
3. Compile the code in the "Solidity Compiler" tab.
4. Deploy the contract in the "Deploy & Run Transactions" tab.
5. Interact with the contract through Remix's interface.

## Authors

Otaiki Sadiq 
@otaikisadiq

## License

This project is licensed under the MIT License - see the LICENSE.md file for details.
