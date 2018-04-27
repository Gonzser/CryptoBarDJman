pragma solidity ^0.4.19;

import "./ownable.sol";
import "./safemath.sol";

//Only startable by the owner, the one who call this DAPP.
contract StartParty is Ownable {

    //set safemath for basic operations
  using SafeMath for uint256;

    /*Main event to start DAPP
    set address for owner.
    start all tokens owner has
    Start the party
    to do so we gone call from here: 
        setdanceroom
        setdrinks
        setmusic
        settokens
    
    */
  event NewParty(uint barDJmanId, string name, uint dna);

  uint dnaDigits = 16;
  uint dnaModulus = 10 ** dnaDigits;
  uint cooldownTime = 1 days;

  struct Guest {
    string name;
    uint dna;
    uint32 level;
    uint32 readyTime;
    uint16 winCount;
    uint16 lossCount;
  }
  
  struct Drink {
    string name;
    uint dna;
    uint32 level;
    uint32 readyTime;
    uint16 winCount;
    uint16 lossCount;
  }

  Guest[] public guest;
