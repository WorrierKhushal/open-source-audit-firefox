# The Open Source Audit: Firefox Web Browser
**Student Name:** Khushal  
**Registration Number:** 24MIM10014  
**Course:** Open Source Software (Capstone Project)  
**Institution:** VIT Bhopal University  

---

## Project Overview
This project is my deep-dive into the world of Free and Open Source Software (FOSS). For my audit, I chose **Firefox**, a browser that has always stood out for its commitment to an open and private web. Rather than just using it, I’ve analyzed how it works on a Linux system, its licensing under MPL 2.0, and how its philosophy contrasts with proprietary alternatives like Google Chrome.

Alongside the research, I have developed five Bash scripts to automate system tasks and demonstrate how open-source tools can be managed via the command line.

---

## The Scripts
I’ve written these five scripts to handle different parts of a Linux system audit. Each file is commented to explain the logic behind it.

1.  **system_identity.sh**: A welcome script that pulls basic system info like your distro name, kernel version, and current uptime. It also prints a short note on why the OS is open source.
2.  **package_inspector.sh**: This one checks if Firefox is actually installed on your machine (using `dpkg` or `rpm`). It also includes a case statement that explains the philosophy of different browsers.
3.  **disk_auditor.sh**: A script that loops through key directories like `/etc` and `/var/log` to check their status. It specifically looks for the `~/.mozilla/firefox` profile folder and tells you its size and permissions.
4.  **log_analyzer.sh**: This is a tool for scanning log files. It takes a file path as an argument and counts how many times "firefox" appears. If the file is empty, it has a built-in retry loop.
5.  **manifesto_generator.sh**: An interactive script where you answer a few questions about your open-source views. It then saves your personal "manifesto" to a text file with a timestamp.

---

## How to Run the Scripts
To run these on your Linux machine, follow these steps:

1.  **Clone the project:**
    ```bash
    git clone https://github.com/your-username/oss-audit-24MIM10014.git
    cd oss-audit-24MIM10014/scripts
    ```

2.  **Give execution permissions:**
    You need to make the scripts executable before running them:
    ```bash
    chmod +x *.sh
    ```

3.  **Execute a script:**
    You can run any script by using `./` followed by the filename. For example:
    ```bash
    ./system_identity.sh
    ```
    *Note: For `log_analyzer.sh`, you need to provide a log file path:*
    ```bash
    ./log_analyzer.sh ~/.xsession-errors
    ```

---

## Requirements & Dependencies
- **OS:** Linux (Tested on Ubuntu/Debian/Fedora).
- **Shell:** Bash (v4.0 or higher recommended).
- **Packages:** Most commands used (`grep`, `awk`, `du`, `uname`) are standard on any Linux distro. For the package inspector, `dpkg` or `rpm` should be present depending on your system type.

---

## Final Thoughts
Working on this audit helped me realize that open source isn't just about "free software"—it's about community control and transparency. Building these scripts gave me a practical way to interact with the system and see how Firefox integrates into the Linux ecosystem.
