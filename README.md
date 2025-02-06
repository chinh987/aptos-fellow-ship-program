# Aptos Fellowship Program

This repo contains the code that were exercised during The Aptos Fellowship Program.

# To Install Aptos CLI

The aptos tool is a command line interface (CLI) for developing on the Aptos blockchain, debugging, and for node operations.
You can follow the steps to install it for your OS from [here](https://aptos.dev/tools/aptos-cli/install-cli/)!

# Create Aptos Project

- Open the terminal
- Run Command Aptos : this will initiate the Aptos CLI
- cd desktop
- mkdir AptosFellowshipProgram
- cd AptosFellowshipProgram
- Run command `aptos move init --name <project name>`
- Run command `aptos init --network devnet`
- Now open your project in any code editor
- open move.toml file and add `MyAddr = <Your Aptos Address>`
- you can create modules in the `sources` folder and scripts in the `scripts` folder
- To compile your code run `aptos move compile`
- To test your code (provided you have mention a test in your code) run `aptos move test`
- To publish your code run `aptos move publish`
- To run a specific unit test run `aptos move test --filter <unitTestName>`.
