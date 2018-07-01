pragma solidity ^0.4.24;

import "openzeppelin-solidity/contracts/token/ERC721/ERC721Token.sol";

contract MyToken is ERC721Token {

  constructor (string _name, string _symbol) public ERC721Token(_name, _symbol) {

  }

  function purchase() public payable {
  	require(msg.value == 1 ether);
  }

  /**
  * Custom accessor to create a unique token
  */
  function mintUniqueTokenTo(address _to, uint256 _tokenId, string  _tokenURI) public {
    super._mint(_to, _tokenId);
    super._setTokenURI(_tokenId, _tokenURI);
  }
}
