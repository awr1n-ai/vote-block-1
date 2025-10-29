<img width="1366" height="768" alt="Screenshot (12)" src="https://github.com/user-attachments/assets/f517a9be-0ee5-4161-9bdd-7c33e207374f" />

# 🗳️ QuickPoll — Immutable Blockchain Poll

## 🧩 Project Description
**QuickPoll** is a simple and immutable voting smart contract built with **Solidity**.  
It allows anyone to create a one-time poll with multiple choices, where participants can vote **instantly** and view **real-time results** — all stored transparently on the blockchain.  

This project is designed to help beginners understand how **decentralized voting systems** work while learning essential Solidity concepts like state variables, mappings, and immutability.

---

## 💡 What It Does
QuickPoll lets you:
- Deploy a **poll** with a question and several voting options.
- Allow **any address** to cast a single vote.
- Provide **instant results** that update automatically on-chain.
- Ensure that the poll’s question and options are **immutable** once deployed — no edits, no manipulation.

Everything happens on the blockchain, making the voting process transparent, fair, and tamper-proof.

---

## ✨ Features
- ✅ **Immutable Setup:** Once deployed, the poll question and options cannot be changed.  
- ⚡ **Instant Results:** Live vote counts available at any time using `getResults()`.  
- 🧠 **Beginner-Friendly:** Clean, readable Solidity code — perfect for learning.  
- 🔒 **One Vote Per Address:** Each wallet can only vote once.  
- 🧩 **Fully Transparent:** Anyone can verify results directly on-chain.  
- 🌐 **EVM Compatible:** Works with Ethereum and other EVM-compatible networks.

---

## 🔗 Deployed Smart Contract
**Remix IDE Deployment Link:**  
[https://remix.ethereum.org/#lang=en&optimize=false&runs=200&evmVersion=null&version=soljson-v0.8.30+commit.73712a01.js](https://remix.ethereum.org/#lang=en&optimize=false&runs=200&evmVersion=null&version=soljson-v0.8.30+commit.73712a01.js)

**Contract Address:** `<0x7f13976279b3Da9f09b898FEECBcBA3C32AA93e0>`
---
## 🧱 Smart Contract Code
```solidity
🛠️ How to Use

Open the link above to Remix IDE.

Create a new file (e.g., QuickPoll.sol) and paste in the contract code.

Compile the contract using Solidity version 0.8.20 or above.

Deploy the contract:VoteBlock - contract/awr1n.sol/ajan.sol
Enter your poll question (string).

Add your poll options (array of strings).

Once deployed:

Anyone can call the vote(optionIndex) function to vote.

Use getResults() to see the instant results.

📘 Learning Resources

Solidity Official Docs

Remix Ethereum IDE

Ethereum Developer Portal

🧑‍💻 Author

Created with ❤️ by [Aryan choudhary]
If you like this project, don’t forget to ⭐ it on GitHub and share it with your fellow Web3 learners!
