# 📊 Disk Usage Report Generator Script

A colorful and interactive Bash script that scans disk usage of selected directories and saves the report in a readable format. Designed for developers, sysadmins, and anyone who wants a quick overview of where their storage space is going. Bonus: cool terminal banner for ✨ style points ✨

---

## 🚀 Features

- 🖼️ Terminal ASCII banner with ANSI colors  
- 🔍 Analyzes disk usage for given directories  
- 💾 Saves output to `disk_usage_report.txt`  
- 🧠 Uses default dirs (`/home /var /tmp`) if none are entered  
- 📊 Sorts files and folders by size (largest first)  
- ✅ Validates directories before scanning  

---

## 📂 How to Clone & Run

### 1. Clone the Repo

```bash
git clone https://github.com/ILakshitha/disk-usage-reporter.git
cd disk-usage-reporter
```
2. Make It Executable
   ```
   chmod +x disk_report.sh
   ```
3. Run the Script
   ```
   ./disk_report.sh
   ```
---
## 🧪 Usage Guide
When you run the script, it will:

- Show your current working directory
- Display a cool ASCII banner
- Prompt you to enter space-separated directories (like /home /etc)
- If you press Enter without input, it’ll use /home /var /tmp
- Analyze each directory using du
- Sort the output by size
- Save it to a file called disk_usage_report.txt

### 📦 Dependencies
This script uses basic Unix commands available on most systems:

bash

du

sort

echo (with ANSI color support)

🧼 No extra packages required!

### 🔐 Need Root Access?
If you're scanning system folders like /root, run the script with sudo:

bash
Copy
Edit
sudo ./disk_report.sh
## 📜 License
MIT License — open-source and free to modify, reuse, or share.

## 🧑‍💻 Author
Made with ❤️ by Ishan Lakshitha
