// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../src/PetRegistry.sol";

contract DeployPetRegistry is Script {
    function run() external {
        vm.startBroadcast();
        new PetRegistry();
        vm.stopBroadcast();
    }
}
