// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import './ERC721Connector.sol';

contract Kryptobird is ERC721Connector
{
  string[] public KryptoBirdz;

  mapping(string => bool) _kryptoBirdzExists;
  
  function mint(string memory _kryptoBird) public 
  {
    // this is deprecated uint _id = KryptoBirdz.push(_kryptoBird);
    // .push no longer returns the length but a ref to the added element
    KryptoBirdz.push(_kryptoBird);
    uint _id = KryptoBirdz.length - 1;
    _mint(msg.sender, _id);
  }
  constructor() ERC721Connector('KryptoBird','KBIRD')
  {
    
  }
}