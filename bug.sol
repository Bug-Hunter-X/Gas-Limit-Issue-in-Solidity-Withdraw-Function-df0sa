```solidity
function withdraw(uint amount) public {
  require(amount <= balanceOf[msg.sender], "Insufficient balance");
  balanceOf[msg.sender] -= amount;
  payable(msg.sender).transfer(amount);
}
```

This code has a subtle bug related to the use of `transfer`.  The `transfer` function has a gas limit of 2300 gas.  If the `amount` being withdrawn requires more gas than this to transfer, the transaction will fail, and the `withdraw` will not occur, leading to a loss of funds.