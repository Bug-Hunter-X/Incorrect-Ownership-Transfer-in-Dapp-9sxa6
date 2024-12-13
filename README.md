# Incorrect Ownership Transfer in Dapp

This repository demonstrates a common bug in Dapps related to incorrect ownership transfer.  The contract attempts to transfer ownership, but a flaw in the internal `_transferOwnership` function prevents the owner from being correctly updated. This can lead to unexpected behavior and security risks.

## Bug Description
The `transferOwnership` function appears correct at first glance. However, the internal `_transferOwnership` function has a subtle error that prevents proper updating of the `owner_` variable. This error is further highlighted when the `owner()` function is used to obtain the current owner. 

## How to Reproduce
1. Compile the `bug.sol` contract.
2. Deploy the contract.
3. Attempt to transfer ownership. 
4. Observe that the owner is not updated correctly.

## Solution
The solution involves reviewing the `_transferOwnership` function in `bugSolution.sol`. The corrected version ensures the `owner_` variable is updated reliably.