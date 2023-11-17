# TokenBank Smart Contract

## Overview

TokenBank is a simple Solidity smart contract designed to manage token balances, allowing users to deposit and withdraw funds. The contract includes events for tracking deposits and withdrawals, as well as additional checks using `require` and `revert` statements to ensure certain conditions are met during transactions.

## License

This contract is released under the MIT License.

## Contract Functions

### `deposit(uint256 amount)`

- Allows users to deposit funds into their account.
- Parameters:
  - `amount` (uint256): The amount of funds to deposit.
- Conditions:
  - Requires the deposit amount to be greater than zero.
  - Uses `assert` to check if the deposit amount is greater than 20.
- Emits:
  - `Deposit` event with the account address and deposited amount.

### `withdraw(uint256 amount)`

- Allows users to withdraw funds from their account.
- Parameters:
  - `amount` (uint256): The amount of funds to withdraw.
- Conditions:
  - Requires the withdrawal amount to be greater than zero.
  - Requires the user to have sufficient balance for the withdrawal.
  - Uses `revert` to check if the withdrawal amount is not within the range of 1000 to 5000.
- Emits:
  - `Withdrawal` event with the account address and withdrawn amount.
