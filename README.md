# erc721-practice

A practice repo for working with ERC-721 tokens. There are two important things to look at: the smart contract and the tests.

## The smart contract

In `contracts/MyToken.sol`, notice that it's only doing a few things:

1. Inheriting from OpenZeppelin's `ERC721Token.sol`;
2. Implementing a constructor;
3. Implementing a simple minting method.

Almost everything else is delegated to OpenZeppelin's hard work.

## The tests

The tests go through a bunch of behaviours that we'd expect from an ERC-721 token. Study these well.

Note: I wrote a helper function called `expectRevert` to detect reverts, because I didn't want to include another library and this makes the tests relatively more readable.
