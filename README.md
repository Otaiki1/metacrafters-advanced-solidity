# Crowdfunding Smart Contract

This Solidity smart contract implements a simple crowdfunding scenario. It showcases the use of `require()`, `revert()`, and `assert()` statements, along with various features such as global functions, events, and different types of functions (`view`, `pure`, and `payable`).

## Description

The smart contract allows contributors to donate funds to a project, and the owner can withdraw the funds if a fundraising goal is reached. It demonstrates the proper use of `require()`, `revert()`, and `assert()` to handle conditions and errors securely.

## Features

- **Contribute Function (`payable`):** Contributors can donate funds to the project.
- **Withdraw Funds Function (`onlyOwner`, `goalReached`, `assert`):** Owner can withdraw funds if the fundraising goal is reached.
- **View Function (`getGoalReachedStatus`):** Check if the fundraising goal is reached.
- **Pure Function (`calculateRemainingGoal`):** Perform calculations without accessing state.
- **Fallback Function (`receive`):** Accept ether with a revert message.

## Getting Started

### Prerequisites

- Install a Solidity compiler.
- Use Remix, an online Solidity IDE.

### Execution

1. Create a new file in Remix (e.g., `Crowdfunding.sol`).
2. Copy and paste the provided code into the file.
3. Compile the code in the "Solidity Compiler" tab.
4. Deploy the contract in the "Deploy & Run Transactions" tab.
5. Interact with the contract through Remix's interface.

## Authors

Otaiki Sadiq 
[@otaikisadiq](https://twitter.com/otaikisadiq)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.
