// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../src/CertificateRegistry.sol";

contract DeployCertificateRegistry is Script {
    function run() external {
        vm.startBroadcast();
        new CertificateRegistry();
        vm.stopBroadcast();
    }
}
