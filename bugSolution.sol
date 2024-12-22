```solidity
function withdraw(uint amount) public {
  require(amount <= balanceOf[msg.sender], "Insufficient balance");
  (bool success, ) = payable(msg.sender).call{value: amount}(new bytes(0));
  require(success, "Transfer failed.");
  balanceOf[msg.sender] -= amount;
}
```