//SPDX-License-Identifier:GPL-3.0
pragma solidity ^0.8.15;
import "github.com/Prasoon180/superPAD_final_project/blob/main/Token.sol";

contract IDO {
    address public owner;
   uint public _initialSupply = 2000;
   uint public _totalSupply = 20000;

   constructor(){
       owner = msg.sender;
       initialTime = 1658205760;

       }

       modifier onlyowner {
        require(msg.sender == owner,"Only owner can call this function.");
        _;
    }

        uint _weeks ;
        uint _amountPerWeek_private;
        uint _amountPerWeek_public;
        uint _amountPerWeek_reward;
        uint _amountPerWeek_reserve;
        uint _amountPerWeek_market;
        uint _amountPerWeek_team;
        uint _amountPerWeek_liquidity;
        uint _tge;
        //uint _secondsInWeek = 604800;
        uint _secondsInWeek;
        uint secondsPassed; 
        uint initialTime;
        uint _Tge;

    mapping(address => uint256) public balanceOf;
    mapping(address => mapping(address => uint256)) public allowance;

    function B20_TGE () onlyowner public {
        balanceOf[msg.sender] = _initialSupply;
    }

    function B20_LINEAR () onlyowner public {
        balanceOf[msg.sender] = _totalSupply;
    }

    function transfer(address _to, uint256 _value) private returns (bool success) {
        require(balanceOf[msg.sender] >= _value);

        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;

        return true;
    }

    function transferFrom(address _from, address _to, uint256 _value) private returns (bool success) {
        require(_value <= balanceOf[_from]);
        require(_value <= allowance[_from][msg.sender]);

        balanceOf[_from] -= _value;
        balanceOf[_to] += _value;
        allowance[_from][msg.sender] -= _value;

        return true;
    }

    function _private(address to) onlyowner payable public  {
       //  _balances = 10000000;
         _weeks = 0;
        // _amountPerWeek_private = 25;
         _tge = initialTime;
         _secondsInWeek = 100 seconds;
         uint256 x = balanceOf[to];
         //secondsPassed = block.timestamp - initialTime;
        
         if (_weeks == 0) {
            
             require(block.timestamp >= _tge, "tge not finished");
             require(block.timestamp - _tge <= _secondsInWeek, "transaction not done within 1 week");
             balanceOf[to] = x + 20;
             balanceOf[msg.sender] -= 20; 
             _Tge += _secondsInWeek;
             _weeks = _weeks + 1;
         }
         
         
        
         if (_weeks >=1 && _weeks <= 38) {
             require(block.timestamp >= _tge, "tge not finished");
             require(block.timestamp - _tge >= _Tge, "you can call the contract after 1 week");
             balanceOf[to] = x + 25;
             balanceOf[msg.sender] -= 25; 
            _Tge += _secondsInWeek;
            _weeks = _weeks + 1;
         }
         
             if (_weeks > 38 && _weeks < 40) {
             require(block.timestamp >= _tge, "tge not finished");
             require(block.timestamp - _tge >= _secondsInWeek, "you can call the contract after 1 week");
                 
                 balanceOf[to] = x + 12;
                 balanceOf[msg.sender] -= 12;
                 balanceOf[msg.sender] = 0;
                 _weeks = _weeks + 1;

                
             }
         }
                    }
    

                    
                    
