# Taller de Foundry 🚀

¡Bienvenido al Taller de Foundry! En esta sesión, exploraremos el poderoso entorno de desarrollo Foundry para contratos inteligentes en Ethereum, siguiendo las enseñanzas de Patrick Collins.

## ✅ Prerrequisitos

Antes de comenzar, asegúrate de tener lo siguiente:

- 🖥️ Una máquina con Linux, macOS, o Windows Subsystem for Linux (WSL)
- 📌 [Git](https://git-scm.com/) instalado
- 🦀 [Rust](https://www.rust-lang.org/tools/install) instalado
- 🔨 [Foundry](https://book.getfoundry.sh/getting-started/installation) instalado

---

## 🚀 Guía de Instalación

### 1️⃣ Instalar Rust

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env
```

### 2️⃣ Instalar Foundry

Si estas usando Linux o WSL.

```bash
curl -L https://foundry.paradigm.xyz | bash
source ~/.bashrc  # o
source ~/.zshrc   # si usas Zsh
foundryup
```

Si estás usando Windows.

```bash
# clone the repository
git clone https://github.com/foundry-rs/foundry.git
cd foundry
# install Forge
cargo install --path ./crates/forge --profile release --force --locked
# install Cast
cargo install --path ./crates/cast --profile release --force --locked
# install Anvil
cargo install --path ./crates/anvil --profile release --force --locked
# install Chisel
cargo install --path ./crates/chisel --profile release --force --locked
```

### 3️⃣ Verificar Instalación

```bash
foundryup --version
forge --version
anvil --version
```

Si ves las versiones correctamente, ¡todo está listo para continuar! 🎉

---

## 🏗️ Configuración del Proyecto

Para iniciar un nuevo proyecto en Foundry:

```bash
forge init MiProyectoFoundry
cd MiProyectoFoundry
```

Otra manera de iniciar el proyecto es haciendo:

```bash
cd MiProyectoFoundry
forge init . --force
```

Para casos en donde ya tengamos el directorio creado.

Para construir el proyecto:

```bash
forge build
```

Para ejecutar los tests:

```bash
forge test
```

Para correr una instancia local de blockchain:

```bash
anvil
```

¡Y listo! Ya estás preparado para desarrollar contratos inteligentes con Foundry. 🔥

---

## 📌 Próximos Pasos

En el taller, cubriremos:

1️⃣ Desarrollo de Contratos Inteligentes
2️⃣ Pruebas con Forge
3️⃣ Simulación de Blockchain Local con Anvil
4️⃣ Estrategias de Despliegue

¡Mantente atento para más instrucciones durante la sesión! 🚀

---

¡Feliz desarrollo en web3! 😎

El siguiente bloque de codigo es la autogeneración de forge al crear un proyecto nuevo.

## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

- **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
- **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
- **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
- **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
