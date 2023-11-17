// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TokenBank {
    mapping(address => uint256) public balances;

    event Deposit(address indexed account, uint256 amount);
    event Withdrawal(address indexed account, uint256 amount);

    // Deposit function with require
    function deposit(uint256 amount) external {
        require(amount > 0, "Amount must be greater than zero");
        assert(amount > 20);
        balances[msg.sender] += amount;

        emit Deposit(msg.sender, amount);
    }

    // Withdraw function with require and revert
    function withdraw(uint256 amount) external {
        require(amount > 0, "Amount must be greater than zero");
        require(balances[msg.sender] >= amount, "Insufficient balance");
        
        // Use revert to make sure the user is withdrawing more than 1000
        if (amount < 1000 || amount > 5000) {
            revert("Amount must be at least 1000 and less than 5000");
        }
        balances[msg.sender] -= amount;


     emit Withdrawal(msg.sender, amount);
    }
}
