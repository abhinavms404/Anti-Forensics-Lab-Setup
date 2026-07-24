# 🧹 Anti-Forensics Lab Setup
### Educational Linux Anti-Forensics Training Lab (Metasploitable 2)

> ⚠️ **Educational Use Only**
>
> This repository is designed **only for cybersecurity education, digital forensics training, blue-team awareness, and controlled laboratory environments**.
>
> All demonstrations should be performed inside an isolated virtual machine (such as **Metasploitable 2**) that you own or are explicitly authorized to test.
>
> **Do not use these techniques on systems without authorization.**

---

## 📖 Overview

This project provides a complete anti-forensics laboratory used to demonstrate how attackers may attempt to hide evidence after compromising a Linux system, and how defenders and forensic analysts can recognize those artifacts.

The lab intentionally creates a variety of forensic footprints and then demonstrates how they can be identified and cleaned within a controlled environment.

The purpose is to help students understand:

- Linux forensic artifacts
- Incident response
- Persistence mechanisms
- Privilege escalation artifacts
- Log analysis
- Timestamp manipulation
- User activity traces
- Common attacker cleanup techniques
- Detection opportunities for blue teams

---

# 🖥️ Lab Environment

| Component | Value |
|-----------|-------|
| Operating System | Metasploitable 2 |
| Platform | VMware / VirtualBox |
| Privileges | Root |
| Target | Local VM |
| Purpose | Digital Forensics Training |

---

# 📂 Repository Structure

```
.
├── recreate.sh
├── nuke.sh
├── autowipe.sh
└── README.md
```

---

# 📚 Learning Objectives

By completing this lab you will learn how investigators identify:

- Rogue local accounts
- SUID privilege escalation artifacts
- Hidden loot storage
- SSH persistence
- Webshells
- Scheduled persistence
- Authentication log entries
- Bash history artifacts
- Timestamp anomalies
- File system indicators

You'll also understand how these traces may be modified or removed, and why defenders should rely on multiple sources of evidence rather than a single artifact.

---

# 🧪 Lab Workflow

The lab is divided into two major phases.

---

## Phase 1 — Generate Forensic Artifacts

This phase intentionally creates evidence that commonly appears during incident response investigations.

Examples include:

- Creation of additional local users
- Privilege escalation artifacts
- Temporary data storage
- Authentication log activity
- Scheduled persistence
- SSH authorized keys
- Webshell deployment
- Timestamp manipulation
- Command history generation

Students can inspect the system before and after each action to understand how forensic artifacts are created.

---

## Phase 2 — Cleanup Demonstration

The second phase demonstrates how those artifacts can be removed or altered inside the lab environment.

Topics include:

- Removing persistence
- Deleting temporary files
- Removing unauthorized users
- Clearing shell history
- Removing webshells
- Cleaning scheduled tasks
- Log cleanup demonstrations
- Final system cleanup

This phase exists to help defenders understand attacker behavior and improve forensic investigation techniques.

---

# ⚙️ Automation Scripts

## recreate.sh

Creates the complete lab environment automatically.

Purpose:

- Populate the VM with forensic artifacts
- Prepare demonstrations
- Reset the environment for another class

---

## nuke.sh

Removes the artifacts created during the lab.

Purpose:

- Reset the VM
- Return to a clean baseline
- Prepare for the next exercise

---

## autowipe.sh

Demonstrates an automated cleanup mechanism inside the lab.

This script is included for educational analysis of persistence and evidence removal. Students should observe how recurring cleanup tasks affect forensic investigations.

---

# 🎯 Skills Covered

- Linux Security
- Digital Forensics
- Incident Response
- Threat Hunting
- Privilege Escalation
- Log Analysis
- Bash Artifacts
- Linux Persistence
- File System Analysis
- Timestamp Analysis
- Blue Team Operations
- Malware Cleanup Awareness

---

# 👨‍💻 Intended Audience

- Cybersecurity Students
- Digital Forensics Learners
- SOC Analysts
- Incident Responders
- Blue Teams
- CTF Players
- Security Trainers
- University Labs

---

# 🔬 Suggested Exercises

- Identify every artifact created during Phase 1.
- Compare the system before and after cleanup.
- Determine which traces remain after cleanup.
- Correlate evidence from logs, file metadata, and user activity.
- Discuss why relying on a single source of evidence can be misleading.

---

# ⚠️ Disclaimer

This repository is intended solely for:

- Security education
- Authorized laboratory exercises
- Defensive security training
- Digital forensics instruction
- Research

The author is **not responsible** for misuse of the information contained in this repository. Always obtain proper authorization before testing or modifying any system.

---

# 📜 License

This project is released under the **MIT License**.

See the **LICENSE** file for details.

---

# ⭐ Support

If you found this project useful for learning Linux forensics or cybersecurity:

⭐ Star the repository

🍴 Fork it

📢 Share it with other learners

---

# 👤 Author

**Abhinav M S**

Cybersecurity Researcher

---

> "Understanding how evidence can be altered is essential to learning how to preserve, detect, and investigate it."
