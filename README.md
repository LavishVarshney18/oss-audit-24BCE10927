# oss-audit-24BCE10927

A suite of five Bash scripts designed to provide essential system information, package inspection, and basic auditing for Linux environments. This project was developed as a complete solution for the Open Source Audit assignment.

---

## 👤 Student Information

| **Student Name** | Lavish Varshney |
|------------------|-----------------|
| **Roll Number**  |   24BCE10297    |

---

## 💻 Chosen Software

This project is built and optimized for the **Linux (Ubuntu)** operating system running on **Windows Subsystem for Linux (WSL)**. It uses standard GNU command-line utilities and the Apache HTTP Server.

---

## 📜 Script Index & Descriptions

### Script 1: System Info Reporter
Generates a report of the current system state. It extracts the following details:
- **Distro**: Retrieves the Linux distribution name  
- **Kernel**: Uses `uname -r` to identify kernel version  
- **User & Home**: Displays current user and home directory  
- **Uptime & Time**: Shows system uptime and current date  
- **License Info**: Indicates Linux is open-source (GPL-based)

---

### Script 2: FOSS Package Inspector
A package management utility that checks for the installation of a package (default: `apache2`).

- **Validation**: Uses `dpkg -l` to verify installation  
- **Metadata**: Displays package version and details  
- **Context**: Uses conditional logic to describe the package purpose  

---

### Script 3: Disk and Permission Auditor
A system auditing script that checks important directories using a loop.

- **Permission Audit**: Uses `ls -ld` and `awk` to show permissions, owner, and group  
- **Size Calculation**: Uses `du -sh` for directory size  
- **Config Check**: Monitors `/etc/apache2` directory  

---

### Script 4: Log File Analyzer
A log analysis script that processes system log files.

- **Input Validation**: Checks if the file exists and is not empty  
- **Pattern Matching**: Uses `grep` to find keyword occurrences (e.g., "error")  
- **Summary**: Displays total count and last 5 matching lines using `tail`  

---

### Script 5: Open Source Manifesto Generator
An interactive script that creates a personalized manifesto.

- **User Input**: Takes responses about tools, freedom, and future goals  
- **File Generation**: Creates a `.txt` file using `date` and `whoami`  
- **Data Handling**: Uses `>` and `>>` for writing content  
- **Output Display**: Shows the generated manifesto  

---

## 🔍 Approach

The project was completed in a step-by-step manner. First, WSL and Ubuntu were set up on Windows, followed by installation and configuration of the Apache web server. After verifying the server functionality, individual Bash scripts were developed for different tasks such as system information, package inspection, and log analysis. Each script was tested and refined to ensure correct output.

## ▶️ Step-by-Step Run Instructions

1. Navigate to project directory:

cd project-folder


2. Set execution permissions:

chmod +x script1.sh script2.sh script3.sh script4.sh script5.sh


3. Execute scripts:
- System Info: `./script1.sh`  
- Package Check: `./script2.sh`  
- Disk Audit: `./script3.sh`  
- Log Analysis: `./script4.sh`  
- Manifesto Generator: `./script5.sh`  

---

## 📦 Dependencies

- **Interpreter**: `/bin/bash`  
- **Utilities**: `dpkg`, `awk`, `grep`, `du`, `tail`, `date`, `whoami`  

---

## 📊 Findings

- Apache server was successfully installed and configured on WSL.
- Shell scripts helped automate system-level tasks efficiently.
- Commands like dpkg, grep, and awk proved useful for data extraction.
- Log analysis helped in identifying errors quickly.
- Open-source tools provide flexibility and ease of use in development.

## 📖 Learning Outcome

->This project helped in understanding how open-source software works in a Linux environment.
->It also improved practical knowledge of shell scripting and system-level operations.
