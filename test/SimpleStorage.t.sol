// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol"; // Importa la biblioteca de pruebas de Foundry
import "../src/SimpleStorage.sol";

contract SimpleStorageTest is Test {
    SimpleStorage public storageContract; // Declara una variable pública de tipo SimpleStorage

    // storageContract es una instancia del contrato SimpleStorage
    // storageContract es una variable de tipo SimpleStorage que se utilizará para interactuar con el contrato SimpleStorage en las pruebas.

    function setUp() public {
        storageContract = new SimpleStorage(); // Generamos una nueva instancia del contrato SimpleStorage para cada funcion de prueba.
    }

    // Esta funcion verifica que setee adecuadamente el valor 42
    function testSetAndGet42() public {
        storageContract.set(42);
        assertEq(storageContract.get(), 42);
    }

    // function testSetAndGet42WithName() public {
    //     storageContract.set(42, "Alice");
    //     assertEq(storageContract.get(), 42);
    //     assertEq(storageContract.getName(), "Alice");
    // }

    // Esta funcion fallara a proposito al setear adecuadamente el valor 100 y querer confirmar si es 42
    function testSetAndGet42False() public {
        storageContract.set(100);
        assertEq(storageContract.get(), 42);
    }
}
