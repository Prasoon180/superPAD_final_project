//SPDX-License-Identifier:GPL-3.0
pragma solidity ^0.8.15;

import "github.com/Prasoon180/superPAD_final_project/blob/main/BEP20.sol";


contract Token is BEP20 {
  
  address public admin;
  uint public maxTotalSupply;

  constructor(
  
    uint _maxTotalSupply
  )  {
    admin = msg.sender;
    maxTotalSupply = _maxTotalSupply;
  }

  function updateAdmin(address newAdmin) external {
    require(msg.sender == admin, 'only admin');
    admin = newAdmin;
  }

  function mint(address account, uint256 amount) external {
    require(msg.sender == admin, 'only admin');
    uint totalSupply = totalSupply();
    require(
      totalSupply + amount <= maxTotalSupply, 
      'above maxTotalSupply limit'
    );
    _mint(account, amount);
  }
}
