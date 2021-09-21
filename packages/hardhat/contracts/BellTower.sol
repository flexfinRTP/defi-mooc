pragma solidity ^0.8.4;
//SPDX-License-Identifier: MIT

import "hardhat/console.sol";
//import "@openzeppelin/contracts/access/Ownable.sol"; //https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol

contract BellTower {
  uint public bellRung; //counter of how many times the bell has been rung

  // Event for ringing a bell
  event BellRung(uint rangForTheNthTime, address whoRangIt);

  function ringTheBell() public {
    bellRung++;

    emit BellRung(bellRung, msg.sender);
  }
}