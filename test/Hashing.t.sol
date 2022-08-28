// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "ds-test/test.sol";
import "../src/Hashing.sol";

contract HashingTest is DSTest {
    Hashing public hashing;

    function setUp() public {
       hashing = new Hashing();
    }

    function testSetHash() public {
        bool hashPassed = hashing.setHash();

        assertTrue(hashPassed);
    }

    function testGetHash() public {
        bytes32 theHash = hashing.getHash();
        assertEq(theHash, hashing.getHash());
    }
}
