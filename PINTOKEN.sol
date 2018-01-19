pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract PINTOKEN is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function PINTOKEN(address _owner)  UpgradeableToken(_owner) {
    name = "PINTOKEN";
    symbol = "PIN";
    totalSupply = 88000000000000000000;
    decimals = 12;

    balances[_owner] = totalSupply;
  }
}