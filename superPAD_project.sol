//SPDX-License-Identifier:GPL-3.0
pragma solidity ^0.8.15;
import "github.com/Prasoon180/superPAD_Final_Project_1/blob/main/BEP20.sol";
contract superPAD {
    
    uint  _weeks;
    uint  _balances;
    uint  _tge;
    uint  _months;
    uint  _amountPerWeek;
    uint  _secondsInWeek;
    uint public secondsPassed;
    uint public initialTime;
    uint   _amountPerMonth;
    uint  _secondsInMonth;
    address public owner;

    mapping (address => uint) balances;
    uint public totalSupply = 20000000 * 10 ** 18;          // 200 million SPAD
    uint public initialSupply = 15140000 * 10 ** 18; 

 constructor()  {
    owner = msg.sender;
    balances[msg.sender] = totalSupply;
    }
  
     
    function _private(address to) payable public {
         _balances = 10000000 * 10 ** 18;
         _weeks = 0;
         _amountPerWeek = 259740.2597 * 10 ** 18;
         _tge = block.timestamp;
         _secondsInWeek = 604800;
         secondsPassed = initialTime - block.timestamp;
         uint256 x = balances[to];
         
          require(block.timestamp >= _tge, "tge not finished"); 
         if(_weeks == 0){
              balances[msg.sender] -= 259740.2597 * 10 ** 18;
              balances[to] += 259740.2597 * 10 ** 18;
              _weeks ++;
            
         }
        
         if (_weeks <= 38 && secondsPassed >= _secondsInWeek) {
              balances[to] = x + 259740.2597 * 10 **18;
             balances[msg.sender] -= 259740.2597 * 10 **18; 
             initialTime = block.timestamp;
             _weeks ++;
             
         }
             if (_weeks > 38) {
                 balances[to] = x + 129870.1314 * 10 ** 18;
                 balances[msg.sender] -= 129870.1314 * 10 ** 18;
                   balances[msg.sender] = 0;
                   }
                   
                   }

                   
        function _public(address to) payable public  {

         _balances = 50000000 * 10 ** 18;
         _weeks = 0;
         _amountPerWeek = 3906250 * 10 ** 18;
         _tge = block.timestamp;
         _secondsInWeek = 604800;
         secondsPassed = initialTime - block.timestamp;
         uint256 x = balances[to];

         require(block.timestamp >= _tge, "tge not finished"); 
         if(_weeks == 0){
               balances[msg.sender] -= 3906250 * 10 ** 18;
        balances[to] += 3906250 * 10 ** 18;
        _weeks ++;
         }
         if (_weeks <= 12 && secondsPassed >= _secondsInWeek) {
              balances[to] = x +  3906250 * 10 **18;
             balances[msg.sender] -=  3906250 * 10 **18; 
             initialTime = block.timestamp;
             _weeks ++;
             
         }
             if (_weeks > 12) {
                 balances[to] = x + 129870.1314 * 10 ** 18;
                 balances[msg.sender] -= 3125000 * 10 ** 18;
                   balances[msg.sender] = 0;
        }

    }

    function reward(address to) payable public{ 
    _balances = 40000000 * 10 ** 18;
         _months = 0;
         _amountPerMonth = 1500000 * 10 ** 18;
         _tge = block.timestamp;
         _secondsInMonth = 2592000;
         secondsPassed = initialTime - block.timestamp;
         uint256 x = balances[to];

         require(block.timestamp >= _tge, "tge not finished"); 
         if(_months == 0){
             balances[msg.sender] -= 4000000 * 10 ** 18;
        balances[to] += 4000000 * 10 ** 18;
        _months++;
         }
         if (_months <= 24 && secondsPassed >= _secondsInMonth) {
              balances[to] = x + 1500000  * 10 **18;
             balances[msg.sender] -=  1500000 * 10 **18; 
             initialTime = block.timestamp;
             _months ++;
             
         }
             
}

function reserve(address to) payable public {
_balances = 20000000 * 10 ** 18;
         _months = 0;
         _amountPerMonth = 1666666.666666667 * 10 ** 18;
         _tge = block.timestamp;
         _secondsInMonth = 2592000;
         secondsPassed = initialTime - block.timestamp;
         uint256 x = balances[to];

         require(block.timestamp >= _tge, "tge not finished"); 
         if (_months >= 13 && secondsPassed >= _secondsInMonth) {
              balances[to] = x + 1666666.666666667 * 10 **18;
             balances[msg.sender] -=  1666666.666666667 * 10 **18; 
             initialTime = block.timestamp;
             _months ++;
             
         }
         if(_months >=25) {
             balances[msg.sender] = 0;
             balances[to] = 0;
         }

}
function market(address to) payable public {
_balances = 20000000 * 10 ** 18;
         _months = 0;
         _amountPerMonth = 791666.6666666667 * 10 ** 18;
         _tge = block.timestamp;
         _secondsInMonth = 2592000;
         secondsPassed = initialTime - block.timestamp;
         uint256 x = balances[to];

         require(block.timestamp >= _tge, "tge not finished"); 
         if(_months == 0){
              balances[msg.sender] -= 1000000 *10**18;
        balances[to] += 1000000 *10**18;
        _months++;
         }
         if (_months <= 24 && secondsPassed >= _secondsInMonth) {
              balances[to] = x + 791666.6666666667  * 10 **18;
             balances[msg.sender] -=  791666.6666666667 * 10 **18; 
             initialTime = block.timestamp;
             _months ++;


}
}
function team(address to) payable public {
_balances = 30000000 * 10 ** 18;
         _months = 0;
         _amountPerMonth = 2500000 * 10 ** 18;
         _tge = block.timestamp;
         _secondsInMonth = 2592000;
         secondsPassed = initialTime - block.timestamp;
         uint256 x = balances[to];

         require(block.timestamp >= _tge, "tge not finished"); 
         if (_months >=13 && secondsPassed >= _secondsInMonth) {
              balances[to] = x + 2500000  * 10 **18;
             balances[msg.sender] -= 2500000 * 10 **18; 
             initialTime = block.timestamp;
             _months ++;
}
if(_months >=25) {
             balances[msg.sender] = 0;
             balances[to] = 0;
         }
}
function liquidity(address to) payable public {
_balances = 30000000 * 10 ** 18;
         _months = 0;
         _amountPerMonth = 20000000 * 10 ** 18;
         _tge = block.timestamp;
         _secondsInMonth = 2592000;
         secondsPassed = initialTime - block.timestamp;
         uint256 x = balances[to];

         require(block.timestamp >= _tge, "tge not finished"); 
         if(_months == 0){
             balances[msg.sender] -= 6000000 *10**18;
        balances[to] += 6000000 *10**18;
        _months++;
         }
         if (_months <=12 && secondsPassed >= _secondsInMonth) {
              balances[to] = x + 20000000  * 10 **18;
             balances[msg.sender] -=  20000000 * 10 **18; 
             initialTime = block.timestamp;
             _months ++;
}
}
   function transferBEP20(IBEP20 token, address to, uint256 amount) public {
         require(msg.sender == owner, "Only Owner can withdraw funds");
         uint256 bep20balance = token.balanceOf(address(this));
         require(amount <= bep20balance, "balance is low");
         token.transfer(to, amount);
         
     }
     }

