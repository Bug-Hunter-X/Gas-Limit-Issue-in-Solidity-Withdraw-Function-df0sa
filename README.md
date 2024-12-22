# Solidity Withdraw Function Gas Limit Bug

This repository demonstrates a common bug in Solidity smart contracts related to the gas limit of the `transfer` function. The `withdraw` function in `bug.sol` fails if the amount to be withdrawn requires more gas than the 2300 gas limit imposed by `transfer`.

The solution, shown in `bugSolution.sol`, uses the `call` function with a more sophisticated approach to handle potential gas limits and reverts if transfer fails for any reason.