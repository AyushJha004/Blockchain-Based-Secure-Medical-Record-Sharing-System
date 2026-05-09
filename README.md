# Blockchain-Based-Secure-Medical-Record-Sharing-System


🏥 Blockchain-Based Secure Medical Record Sharing System

A blockchain-based system for secure storage and controlled sharing of medical records using smart contracts. The system ensures data integrity, privacy, and patient-controlled access to healthcare data.

📌 Overview

Traditional healthcare systems often face issues like data tampering, lack of security, and poor interoperability. This project uses blockchain technology to create a tamper-proof and decentralized system where patients can securely store and share medical records.

🚀 Features
🔐 Secure storage of medical records on blockchain
👨‍⚕️ Role-based access control (patients and doctors)
🔑 Patient-controlled data sharing permissions
📁 Immutable and tamper-proof data storage
🌐 Decentralized architecture for enhanced security


🛠️ Tech Stack
Blockchain: Ethereum
Smart Contracts: Solidity
Development Tool: Remix IDE

👨‍💻 Contribution:-
This was a group project developed collaboratively.

My Contributions:
Implemented smart contract logic using Remix IDE
Developed core functionality for secure medical record handling
Designed access control mechanisms for controlled data sharing
Tested and deployed smart contracts on a local blockchain

Team Contributions:
Assisted in system design and workflow planning
Collaborated on testing and debugging of smart contracts


⚙️ How It Works
Patient registers in the system
Medical records are securely stored via smart contracts
Doctors request access to records
Patients grant or revoke access permissions
Authorized users can view records securely

Blockchain ensures:

Data cannot be modified (immutability)
Only authorized users can access records
No central authority controls the data
⚙️ Setup Instructions
1)Open Remix IDE
2)Create a new Solidity file and paste the smart contract code
3)Compile the contract
4)Deploy using the Remix environment (JavaScript VM / local blockchain)
5)Interact with the contract functions to simulate record storage and access
6)If required change the region in the IDE terminal suggestion (Paris or London)
7) Keep Estimated Gas as 30,0000


📈 Future Improvements:-

Integration with hospital management systems
Off-chain storage using IPFS for large medical data
Enhanced encryption for sensitive information
Web-based interface for better usability


⭐ Key Learnings:-

Understanding of blockchain fundamentals and smart contracts
Implementation of access control in decentralized systems
Concepts of data security and immutability
Hands-on experience with Remix IDE and Solidity

🏗️ System Architecture:-
                    ┌─────────────────────┐
                    │      Patient        │
                    │  (Record Owner)     │
                    └─────────┬───────────┘
                              │
                 Upload Medical Records
                              │
                              ▼
               ┌─────────────────────────┐
               │   Smart Contract Layer  │
               │      (Solidity)         │
               └─────────┬───────────────┘
                         │
      ┌──────────────────┼──────────────────┐
      │                  │                  │
      ▼                  ▼                  ▼
┌──────────────┐  ┌──────────────┐  ┌────────────────┐
│ Store Record │  │ Access Logic │  │ Permission Mgmt│
│  Hash/Data   │  │ Verification │  │ Grant / Revoke │
└──────┬───────┘  └──────┬───────┘  └────────┬───────┘
       │                 │                   │
       └─────────────────┴───────────────────┘
                         │
                         ▼
              ┌────────────────────┐
              │ Ethereum Blockchain│
              │ Immutable Storage  │
              └─────────┬──────────┘
                        │
            Access Request / Verification
                        │
                        ▼
               ┌─────────────────┐
               │     Doctor      │
               │ Authorized User │
               └─────────────────┘

