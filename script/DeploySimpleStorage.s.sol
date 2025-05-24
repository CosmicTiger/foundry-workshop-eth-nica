// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Nos permite importar las palabras reservadas necesarias para manipular Solidity en local
import "forge-std/Script.sol";
import "../src/SimpleStorage.sol";

contract DeploySimpleStorage is Script {
    function run() external returns (SimpleStorage) {
        vm.startBroadcast(); // Proveniente de la libreria Forge. Nos ejecuta la VM local.
        SimpleStorage simpleStorage = new SimpleStorage(); // Generamos una nueva instancia del contrato
        vm.stopBroadcast(); // Detenemos la VM local porque ya realizamos la ejecución del despliegue
        return simpleStorage; // Retornamos la instancia del contrato desplegado para verla en el output de nuestro CLI.
    }
}
