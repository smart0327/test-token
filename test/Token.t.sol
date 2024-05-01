// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Token} from "../src/Token.sol";

contract TokenTest is Test {
    Token public token;
    address owner;
    address user;

    function setUp() public {
        owner = makeAddr("owner");
        user = makeAddr("user");
        vm.prank(owner);
        token = new Token();
    }

    function testBalance() public {
        vm.prank(owner);
        token.mint(user, 1e18);
        assert(token.balanceOf(user) == 1e18);
    }
}
