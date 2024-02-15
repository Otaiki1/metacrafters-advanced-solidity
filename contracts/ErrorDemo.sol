// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ErrorDemo {
    uint256 public value;

    function setValue(uint256 _value) public {
        // The require function should be used to ensure valid conditions
        // that can be detected before execution.
        require(_value >= 0 && _value <= 100, "Value must be between 0 and 100");

        // Set the value.
        value = _value;
    }

    function incrementValue() public {
        // Increment the value.
        value += 1;

        // Assert function should only be used to test for internal errors,
        // and to check invariants.
        assert(value <= 101); // This will fail if value was 100 before incrementing
    }

    function decrementValue() public {
        // Checks if the value is greater than 0.
        if (value == 0) {
            // Revert function should be used for errors that contain
            // conditions that are met or not met.
            revert("Value is already 0, cannot decrement");
        }

        // Decrement the value.
        value -= 1;
    }
}
