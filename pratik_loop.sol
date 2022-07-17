//SPDX-License-Identifier:GPL-3.0
pragma solidity ^0.8.15;

import "github.com/Prasoon180/superPAD_final_project/blob/main/IBEP20.sol";
import "github.com/Prasoon180/superPAD_final_project/blob/main/Token.sol";

contract IDO {
    
   uint public _initialSupply = 15140000 * 10 ** 18;
   uint public _totalSupply = 200000000 * 10 ** 18;

             uint _weeks ;
        uint _amountPerWeek_private;
        uint _amountPerWeek_public;
        uint _amountPerWeek_reward;
        uint _amountPerWeek_reserve;
        uint _amountPerWeek_market;
        uint _amountPerWeek_team;
        uint _amountPerWeek_liquidity;
        uint _tge ;
        //uint _secondsInWeek = 604800;
        uint _secondsInWeek;
        uint secondsPassed; 
        uint initialTime;

    mapping(address => uint256) public balanceOf;
    mapping(address => mapping(address => uint256)) public allowance;

    function B20_TGE () public {
        balanceOf[msg.sender] = _initialSupply;
    }

    function B20_LINEAR () public {
        balanceOf[msg.sender] = _totalSupply;
    }

    function transfer(address _to, uint256 _value) public returns (bool success) {
        require(balanceOf[msg.sender] >= _value);

        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;

        return true;
    }

    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
        require(_value <= balanceOf[_from]);
        require(_value <= allowance[_from][msg.sender]);

        balanceOf[_from] -= _value;
        balanceOf[_to] += _value;
        allowance[_from][msg.sender] -= _value;

        return true;
    }

    function _private(address to) payable public {
       //  _balances = 10000000;
         _weeks = 0;
         _amountPerWeek_private = 259740.2597 * 10 ** 18;
         _tge = block.timestamp;
         _secondsInWeek = 5 seconds;
         initialTime = block.timestamp;

         secondsPassed = initialTime - block.timestamp;
         uint256 x = balanceOf[to];
         
         

         require(block.timestamp >= _tge, "tge not finished"); 
         if(_weeks < 1){
              balanceOf[msg.sender] -= 259740.2597 * 10 ** 18;
        balanceOf[to] += 259740.2597 * 10 ** 18;
         initialTime = block.timestamp;
        _weeks ++;
            
         }
         if (_weeks >=1 && _weeks <= 38 && secondsPassed >= _secondsInWeek) {
              balanceOf[to] = x + 259740.2597 * 10 **18;
             balanceOf[msg.sender] -= 259740.2597 * 10 **18; 
             initialTime = block.timestamp;
             _weeks ++;
             
         }
             if (_weeks > 38 && _weeks < 40) {
                 balanceOf[to] = x + 129870.1314 * 10 ** 18;
                 balanceOf[msg.sender] -= 129870.1314 * 10 ** 18;
                   balanceOf[msg.sender] = 0;
                    initialTime = block.timestamp;
                   _weeks ++;
                    }
                    }
                    }
