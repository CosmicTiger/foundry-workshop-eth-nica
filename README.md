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

```bash
cargo install --git https://github.com/foundry-rs/foundry --locked foundry-cli anvil
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
