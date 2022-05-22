//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract ERC20 {
    uint256 public totalSupply;
    string public name;
    string public symbol;
    uint8 public decimals;

    constrcuctor(string: memory _name, string memory _symbol) {
        name = _name;
        symbol = _symbol; 
    }

    function decimals() external pure returns (uint8) {
        return 18;
    }

     modifier onlyOwner {
      require(msg.sender == owner);
      _;
   }

   mappping(address=> uint256) public balanceOf;
   mappping(address => mapping(address => unit256)) public allowance;

   function transfer(address recipient, uint256 amount) external returns(bool) {
       require(recipient != address(0), "ERC20: transfer to the zero address");
       unit256 senderBalance = balanceOf[msg.sender];
       require(senderBalance >= amount, "ERC20: transfer amount exceeds balance");
       balanceOf[msg.sender] = senderBalance - amount;
       balanceOf[recipient] = balanceOf[recipient] + amount;
       return true;
   }
}