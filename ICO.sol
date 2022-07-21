//SPDX-License-Identifier:GPL-3.0
pragma solidity ^0.8.15;
//import "github.com/Prasoon180/superPAD_final_project/blob/main/BEP20.sol";
import "github.com/Prasoon180/superPAD_final_project/blob/main/IBEP20.sol";


// till here BEP20 token formation done

contract ICO  {

IBEP20  public  bep20Address;
uint _weeks;
uint _TGE;
address public owner;

constructor(address _bep20Address) {
    bep20Address = IBEP20(_bep20Address);
    _TGE = block.timestamp;               // here TGE is initial time permanently set
}

    
/*modifier onlyOwner(){
        require(msg.sender == owner ,"you can't unlock now");
        _;
    }

*/

function _private(address to , uint _amount) public  {
if(_weeks == 0) {
    require(block.timestamp > _TGE, "TGE not happened properly");
    
    bep20Address.transfer( to, _amount);
    _weeks ++;
    _TGE += 60 seconds;      // 1 WEEK = 604800 seconds

}
if(_weeks >= 1 && _weeks < 40) {
    require(block.timestamp > _TGE, "1 WEEK NOT OVER");
     bep20Address.transfer( to, _amount);
     _weeks ++;
    _TGE += 60 seconds;
}
if(_weeks >= 40) {
     require(block.timestamp + _TGE < _TGE, "YOUR TIME PERIOD IS OVER");
}

}

}
