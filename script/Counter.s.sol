// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";

contract CounterScript is Script {
    function setUp() public {}

    function run() public {
        vm.broadcast();
    }
}

// Deploy the smart contract
// forge create --rpc-url https://sepolia.infura.io/v3/[api key] --private-key [private key] src/Counter.sol:Counter
// Get Public State Variable
// cast call [smart contract address] "number()(uint256)" --rpc-url https://sepolia.infura.io/v3/[api key]
// Modify State Variable through External / Public Function
// cast send [smart contract address] "increment()" --rpc-url https://sepolia.infura.io/v3/[api key] --private-key [private key]