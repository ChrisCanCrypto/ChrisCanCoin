// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

// import the ERC20 Contract from OpenZeppelin
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

// Create the contract ChrisCanCoin as a ERC20 to inherit the contract standards
contract ChrisCanCoin is ERC20 {

    // Construct the token and give it the name Chris Can Coin and symbol CCC
    // Note that the constructor is set to only deploy the CCC token.
    // If I wanted to write a more dynamic constructor I would use the following code:
    // constructor(string memory _name, string memory _symbol) ERC20(_name, _symbol)
    constructor() ERC20("Chris Can Coin", "CCC"){

        // Mint a supply of 100 CCC tokens to my address
        _mint(msg.sender, 100 * (10 ** 18));

    }

    function publicMint() public {
        // Allow anyone on the Ropsten testnet to mint 100 CCC tokens
        _mint(msg.sender, 100 * (10 ** 18));
    }

}