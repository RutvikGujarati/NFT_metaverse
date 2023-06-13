// SPDX-License-Identifier: MIT
// SPDX-License-Ientifier: MIT
pragma solidity ^0.8.5;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract Monkey is ERC721URIStorage, Ownable {

   using Counters for Counters.Counter;

   Counters.Counter private _tokenIds;
   constructor() ERC721("Monkey", "MONK") {}

   function mintNFT(address recipient , string memory  tokenURI)
   public onlyOwner returns (uint256) {
    _tokenIds.increment();
    
    uint256 newITemID = _tokenIds.current();
    _mint(recipient , newITemID);
    _setTokenURI(newITemID, tokenURI);

    return newITemID;
   
   }
}