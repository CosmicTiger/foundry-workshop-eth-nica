// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../src/CertificateRegistry.sol";

contract CertificateRegistryTest is Test {
    CertificateRegistry registry;

    function setUp() public {
        registry = new CertificateRegistry();
    }

    function testRegisterAndGetCertificate() public {
        registry.registerCertificate("Luisangel", "Ingenieria", "Qm123abc...");
        (
            string memory name,
            string memory degree,
            string memory hash
        ) = registry.getCertificate(0);
        assertEq(name, "Luisangel");
        assertEq(degree, "Ingenieria");
        assertEq(hash, "Qm123abc...");
    }
}
