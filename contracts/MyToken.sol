pragma solidity ^0.4.24;

import "openzeppelin-solidity/contracts/token/ERC721/ERC721Token.sol";

contract MyToken is ERC721Token {
  uint storedData;

  constructor (string _name, string _symbol) public ERC721Token(_name, _symbol) {

  }
}