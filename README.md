
# AD-DELET-COMPUTER

PowerShell script to delete a computer object from Active Directory.

## 📋 Description
This script allows you to delete a **computer object** from Active Directory using its name.  
It's useful for cleanup or automated IT asset management tasks.

## 🧠 Requirements

- Sufficient permissions to manage AD computer objects.
- `ActiveDirectory` PowerShell module (included in RSAT).
- Must be run as Administrator.

## 🚀 Usage

```powershell
.\delete-ad-computer.ps1 -ComputerName "YOUR_COMPUTER_NAME"
```

## ⚠️ Warning
- Make sure the computer name is correct before running the script.
- The deletion is **irreversible**.

## 🛠 Example command used:

```powershell
Remove-ADComputer -Identity "PC-DEMO01" -Confirm:$false
```

## 🔒 Safety
The script uses `-Confirm:$false` to allow silent operation (no prompt).  
Remove that flag if you want confirmation before deletion.

---

📁 GitHub Repository: [AD-DELET-COMPUTER](https://github.com/KuKaRaCHa-gg/AD-DELET-COMPUTER)
