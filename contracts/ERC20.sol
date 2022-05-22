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

    function transfer(msg.sender, address recipient, uint256 amount) external returns(bool) {
        return _transfer(msg.sender, recipient, amount);
    }

    function transferFrom(address sender, address recipient, uint256 amount) external returns(bool) {
       unit256 currentAllowance = allowance[sender][msg.sender];

 
       require(currentAllowance >= amount, "ERC20: transfer amount excreed allowance");
       allowance[sender][msg.sender] = currentAllowance - amo;

       return _transfer(sender, recipient, amount);
    }

   function approve(address spender, uint256 amount) external returns(bool) {
       require(spender != address(0), "ERC20: approve to this address");
       allowance[msg.sender][spender] = amount;
       return true;
   }

   function _transfer(address sender, address recipient, uint256 amount) external returns(bool) {
       require(recipient != address(0), "ERC20: transfer to the zero address");
       unit256 senderBalance = balanceOf[sender];
       require(senderBalance >= amount, "ERC20: transfer amount exceeds balance");
       balanceOf[sender] = senderBalance - amount;
       balanceOf[recipient] = balanceOf[recipient] + amount;
       return true;
   }
}