# MyToken Contract

## Introduction
MyToken is a basic ERC20 token contract written in Solidity. It allows for token minting, transferring tokens between users, and burning tokens.

## Features
- **Token Name**: ASHISH
- **Token Symbol**: ASH
- **Total Supply**: Initially zero; increases as tokens are minted.
- **Owner**: The deployer of the contract becomes the owner.

## Functions

### mint(address to, uint256 value)
Allows the contract owner to mint new tokens and assign them to a specified address.

### transfer(address to, uint256 value)
Allows any user to transfer tokens to another address.

### burn(uint256 value)
Allows any user to burn (destroy) their own tokens.

## Usage
1. **Deployment**: Deploy the contract in a Solidity environment like Remix.
2. **Minting Tokens**: Only the contract owner can mint tokens using the `mint` function.
3. **Transferring Tokens**: Any user can transfer their tokens to another address using the `transfer` function.
4. **Burning Tokens**: Any user can burn their own tokens using the `burn` function.

## Example Workflow
1. Deploy the contract.
2. As the owner, mint tokens to specific addresses.
3. Users can transfer tokens between each other.
4. Users can burn tokens if they choose to reduce their supply.

## Notes
- Ensure the contract owner is trusted, as they have the privilege to mint tokens.
- Token transfers and burning should be handled with care to avoid irreversible actions.

## License
[MIT License](../LICENSE)

