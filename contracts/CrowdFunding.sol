// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Crowdfunding {
    address public owner;
    uint256 public fundraisingGoal;
    uint256 public totalFunds;

    event FundReceived(address indexed contributor, uint256 amount);
    event FundsWithdrawn(uint256 amount);

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }

    modifier goalReached() {
        require(totalFunds >= fundraisingGoal, "Fundraising goal not reached");
        _;
    }

    constructor(uint256 _goal) {
        owner = msg.sender;
        fundraisingGoal = _goal;
    }

    function contribute() external payable {
        require(msg.value > 0, "Contribution amount must be greater than 0");
        
        // Increment total funds
        totalFunds += msg.value;

        // Trigger event
        emit FundReceived(msg.sender, msg.value);
    }

    function withdrawFunds() external onlyOwner goalReached {
        // Use assert to ensure no overflow
        assert(address(this).balance >= totalFunds);

        // Transfer funds to the owner
        payable(owner).transfer(totalFunds);

        // Reset total funds
        totalFunds = 0;

        // Trigger event
        emit FundsWithdrawn(totalFunds);
    }

    function getGoalReachedStatus() external view returns (bool) {
        // Use view function to read state without modifying it
        return totalFunds >= fundraisingGoal;
    }

    function calculateRemainingGoal() external pure returns (uint256) {
        // Use pure function for calculations without accessing state
        uint256 remainingGoal = 100 - 50;
        return remainingGoal;
    }

    receive() external payable {
        // Fallback function to accept ether
        revert("Use the contribute function to send funds");
    }
}
