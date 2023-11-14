## Docker
/bin/bash -c "$(curl -fsSL 'https://sandbox.aztec.network')"

## Npm
1. Install foundry
curl -L https://foundry.paradigm.xyz | bash
foundryup

2. Install aztec sandbox and CLI
npm install -g @aztec/cli @aztec/aztec-sandbox

3. Clone this repository
git clone https://github.com/benesjan/workshop.git

4. Start anvil
$ anvil

5. Start sandbox
$ npx @aztec/aztec-sandbox
