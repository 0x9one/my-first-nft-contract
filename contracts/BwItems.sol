// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

// Import the standard implementation of ERC721
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

// Contract 'BwItems' _IS_  an 'ERC721' contract
contract BwItems is ERC721 {
    constructor() ERC721("byeweb2NftCollection", "BwN") {
        // Mint 5 NFts
        // Take Address, Nft ID
        _mint(msg.sender, 1);
        _mint(msg.sender, 2);
        _mint(msg.sender, 3);
        _mint(msg.sender, 4);
        _mint(msg.sender, 5);
    }
}
