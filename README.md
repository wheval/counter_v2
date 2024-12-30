# Basecamp 11 App

This repository will be used by the teachers of Basecamp 11 to progressively build a Starknet application from start to finish that will include smart contracts, testing and frontend.

## Setup

### 1. Clone the Repository

```sh
git clone https://github.com/starknet-edu/basecamp11-app.git
cd basecamp11-app
```

### 2. Dev Environment

To activate the dev environment, make sure to have [Docker](https://www.docker.com/get-started/) and [VSCode](https://code.visualstudio.com/) installed on your system. On VSCode, make sure to install the [Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension to make use of [this](https://hub.docker.com/r/starknetfoundation/starknet-dev) Docker image for Starknet development.

To launch an instance fo VSCode inside the container, go to `View` -> `Command Palette` and execute the command `Dev Containers: Rebuild and Reopen in Container`. At this point you should have an instance of VSCode with access to all required binaries (Scarb, Foundry, Starkli, etc.) on the integrated terminal and syntax highlighter for Cairo and Toml files.

### 3. Smart Contracts

To build and test the smart contracts, follow these steps:

```sh
scarb build
```
This command compiles the smart contracts and prepares them for deployment.

```sh
scarb test
```
This command runs the test suite to ensure the smart contracts are functioning as expected.

### 4. Web

To set up and run the web application, follow these steps:

1. **Navigate to the Web Directory**:
    ```sh
    cd web
    ```

2. **Install Dependencies**:
    ```sh
    npm install
    ```
    This command installs all the necessary packages and dependencies required for the web application.

3. **Run the Development Server**:
    ```sh
    npm run dev
    ```
    This command starts the development server, allowing you to view and interact with the web application in your browser.
