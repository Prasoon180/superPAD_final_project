// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract BEP20 is ERC20 {
    constructor(uint256 initialSupply)  ERC20("SUPERPAD", "SPAD") {
        _mint(msg.sender, initialSupply);
    }
}
