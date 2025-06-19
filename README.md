# 💰 MyToken - Custom ERC-20-Like Token

This project is a simple implementation of an ERC-20-like fungible token written in Solidity. The token is called **Ether (ETH)** and supports basic operations like `transfer`, `mint`, and `burn`. It is designed for educational and demonstration purposes and omits features like allowances for simplicity.

---

## 🚀 Features

- 🪙 Token Name: **Ether**
- 💲 Symbol: **ETH**
- 🔢 Fixed & Mintable `totalSupply`
- 👛 Transfer tokens between users
- 🔥 Burn tokens from your balance
- 🛠️ Mint new tokens (only owner)

---

## 🛠 Smart Contract Details

### 🔐 Contract Owner
The deployer of the contract becomes the **owner**, who has exclusive rights to mint new tokens.

### 🔧 Functions

| Function | Description |
|----------|-------------|
| `constructor(uint _initialsupply)` | Sets the owner and initial supply on deployment |
| `transfer(address _to, uint _value)` | Allows users to transfer tokens |
| `mint(address _to, uint _value)` | Owner can mint new tokens |
| `burn(uint _value)` | Users can burn their own tokens |
| `balanceof(address)` | Public mapping of token balances |
| `totalsupply()` | Current total supply of tokens |

---

📦 Tech Stack

Solidity ^0.8.0

Ethereum Virtual Machine

Tested on Remix IDE

👨‍💻 Author

Inderjot Singh

🪙 License

This project is licensed under the MIT License.
