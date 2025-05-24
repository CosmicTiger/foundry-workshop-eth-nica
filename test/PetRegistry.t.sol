// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../src/PetRegistry.sol";

contract PetRegistryTest is Test {
    PetRegistry petRegistry;

    function setUp() public {
        petRegistry = new PetRegistry();
    }

    function testRegisterPet() public {
        petRegistry.registerPet("Toby", "Dog", 5);
        (string memory name, , uint8 age, address owner) = petRegistry.getPet(
            0
        );
        assertEq(name, "Toby");
        assertEq(age, 5);
        assertEq(owner, address(this));
    }

    function testPetCountIncrements() public {
        assertEq(petRegistry.getPetCount(), 0);
        petRegistry.registerPet("Toby", "Dog", 5);
        assertEq(petRegistry.getPetCount(), 1);
    }
}
