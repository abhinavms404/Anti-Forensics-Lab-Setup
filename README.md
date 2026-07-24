#  Anti-Forensics Lab Setup

> **A Linux Anti-Forensics Training Lab for Digital Forensics & Incident Response Education**

> ⚠️ **Educational Purpose Only**
>
> This project is intended **solely for cybersecurity education, digital forensics training, incident response exercises, and research** within isolated laboratory environments.
>
> Execute these scripts only on virtual machines or systems that you own or are explicitly authorized to test.
>
> **Do not use this project on production systems or unauthorized targets.**

---

# 📖 Overview

**Anti-Forensics Lab Setup** is a practical training environment designed to help students and security professionals understand how forensic artifacts are created, discovered, and removed on Linux systems.

The lab simulates common artifacts encountered during incident response investigations, allowing learners to practice identifying evidence, understanding attacker behavior, and restoring systems to a clean state.

This repository is ideal for:

* Digital Forensics Training
* Incident Response Labs
* Cybersecurity Courses
* Blue Team Exercises
* SOC Training
* CTF Practice
* Security Awareness Demonstrations

---

# 🎯 Learning Objectives

After completing this lab, learners will understand how to identify and investigate:

* Rogue user accounts
* SUID privilege escalation artifacts
* Temporary data storage
* Hidden directories
* Authentication log entries
* Scheduled task persistence
* SSH authorized keys
* Webshells
* Timestamp manipulation
* Bash history artifacts
* Linux persistence techniques
* General forensic indicators

The lab also demonstrates how systems may be restored after an investigation to prepare for additional exercises.

---

# 📂 Repository Structure

```text
.
├── recreate.sh
├── nuke.sh
└── README.md
```

---

# ⚙️ Automation Scripts

The repository includes two automation scripts that simplify lab setup and cleanup, making it easy to repeat demonstrations during classes or workshops.

---

## 📄 recreate.sh

Automatically prepares the training environment by generating the forensic artifacts used throughout the lab.

### Features

* Creates demonstration user accounts
* Creates a sample SUID binary
* Generates sample sensitive files
* Produces authentication log entries
* Creates scheduled task persistence
* Adds SSH authorized keys
* Deploys a demonstration PHP webshell
* Performs timestamp modification
* Generates Bash history entries

### Usage

```bash
chmod +x recreate.sh
sudo ./recreate.sh
```

---

## 📄 nuke.sh

Removes the artifacts created during the exercise and restores the lab environment to a clean state.

### Removes

* Demonstration user accounts
* Temporary files
* Sample persistence mechanisms
* SSH authorized keys
* Webshells
* Scheduled tasks created for the lab
* Bash history artifacts
* Demonstration log files
* Additional training artifacts

### Usage

```bash
chmod +x nuke.sh
sudo ./nuke.sh
```

---

# 🔄 Typical Workflow

```text
Fresh Linux Lab Environment
          │
          ▼
sudo ./recreate.sh
          │
          ▼
Generate Training Artifacts
          │
          ▼
Perform Investigation
          │
          ▼
Analyze & Document Findings
          │
          ▼
sudo ./nuke.sh
          │
          ▼
Restore Clean Lab State
```

---

# 🧪 Suggested Exercises

* Enumerate newly created users.
* Identify privilege escalation artifacts.
* Inspect temporary storage locations.
* Detect hidden files and directories.
* Examine authentication logs.
* Discover persistence mechanisms.
* Locate SSH backdoors.
* Identify webshells.
* Analyze timestamp inconsistencies.
* Investigate shell history.
* Document all findings before cleanup.
* Compare the system before and after restoration.

---

# 🛠 Requirements

* Linux Virtual Machine
* Bash
* Root privileges
* Standard Linux utilities
* Isolated laboratory environment

---

# 📚 Recommended Audience

* Cybersecurity Students
* Digital Forensics Analysts
* SOC Analysts
* Incident Responders
* Blue Team Engineers
* Security Researchers
* Cybersecurity Instructors
* CTF Players

---

# 🔒 Safety Notice

This repository intentionally creates forensic artifacts for educational purposes.

Always use these scripts:

* Inside virtual machines
* In isolated lab environments
* On systems you own or are authorized to test

Never execute these scripts on production or business systems.

---

# 🤝 Contributing

Contributions are welcome.

Possible improvements include:

* Additional forensic artifact generators
* Detection exercises
* Documentation enhancements
* New Linux distributions
* Instructor guides
* Student lab worksheets

Please open an issue or submit a pull request.

---

# ⭐ Support

If this project helped you learn Linux forensics or cybersecurity:

* ⭐ Star the repository
* 🍴 Fork the project
* 🛠 Contribute improvements
* 📢 Share it with the community

---

# 👨‍💻 Author

## Abhinav M S

**Cybersecurity Researcher**

---

> **"Understanding how attackers attempt to hide evidence is essential for building stronger forensic investigation and incident response skills."**
