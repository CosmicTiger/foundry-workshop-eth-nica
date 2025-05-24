// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PetRegistry {
    struct Pet {
        string name;
        string species;
        uint8 age;
        address owner;
    }

    Pet[] public pets;

    function registerPet(
        string memory name,
        string memory species,
        uint8 age
    ) public {
        pets.push(Pet(name, species, age, msg.sender));
    }

    function getPet(
        uint256 id
    ) public view returns (string memory, string memory, uint8, address) {
        Pet memory p = pets[id];
        return (p.name, p.species, p.age, p.owner);
    }

    function getPetCount() public view returns (uint256) {
        return pets.length;
    }
}
