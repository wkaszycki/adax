pragma solidity ^0.5.0;

import "zeppelin-solidity/contracts/GSN/Context.sol";
import "zeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "zeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";

/**
 * @title ADAXTech Token
 * @author Wojtek Kaszycki <wojtek@adaxtech.com>
 * @notice ADAXTech offical ERC20 standard compliant token.
 */

contract ADAXToken is  Context, ERC20, ERC20Detailed  {
  string public constant name = "ADAXToken"; 
  string public constant symbol = "ADX"; 
  uint8 public constant decimals = 18;
  
  uint256 public constant INITIAL_SUPPLY = 777644156 * (10 ** uint256(decimals));

  constructor() public {
    totalSupply_ = INITIAL_SUPPLY;

    /**
     * @dev Constructor that gives _msgSender() all of existing tokens.
     */
    
    constructor () public ERC20Detailed(name, symbol, decimals) {
        _mint(_msgSender(), totalSupply_ * (10 ** uint256(decimals())));
    }
    emit Transfer(address(0), msg.sender, totalSupply_);
  }
}
