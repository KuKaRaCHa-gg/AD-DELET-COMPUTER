
# AD-DELET-COMPUTER

Script PowerShell pour supprimer un ordinateur de l'Active Directory.

## 📋 Description
Ce script permet de supprimer un objet **ordinateur** dans l’Active Directory à partir de son nom.  
Utile dans des scénarios de nettoyage ou de gestion automatisée.

## 🧠 Prérequis

- Droits suffisants dans l'Active Directory.
- Module `ActiveDirectory` installé (inclus dans RSAT).
- Exécution en tant qu’administrateur.

## 🚀 Utilisation

```powershell
.\delete-ad-computer.ps1 -ComputerName "NOM_DU_PC"
```

## ⚠️ Attention
- Vérifiez bien le nom de l’ordinateur avant suppression.
- L'action est **irréversible**.

## 🛠 Exemple de commande intégrée :

```powershell
Remove-ADComputer -Identity "PC-DEMO01" -Confirm:$false
```

## 🔒 Sécurité
Le script désactive la confirmation (`-Confirm:$false`) pour automatiser les suppressions. Vous pouvez l’enlever pour un usage interactif.

---

📁 Repo GitHub : [AD-DELET-COMPUTER](https://github.com/KuKaRaCHa-gg/AD-DELET-COMPUTER)
```

---

### 📜 `delete-ad-computer.ps1`
```powershell
param (
    [Parameter(Mandatory = $true)]
    [string]$ComputerName
)

# Importation du module AD
Import-Module ActiveDirectory

try {
    $computer = Get-ADComputer -Identity $ComputerName -ErrorAction Stop
    Remove-ADComputer -Identity $ComputerName -Confirm:$false
    Write-Host "✅ L'ordinateur '$ComputerName' a été supprimé avec succès."
} catch {
    Write-Host "❌ Erreur : Impossible de supprimer l'ordinateur '$ComputerName' - $_"
}
```

---

### 🛑 `.gitignore`
```gitignore
# Empêche l'ajout de fichiers temporaires
*.log
*.tmp
*.bak
Thumbs.db
```

---

### 🚀 Commandes Git à exécuter

Tu peux maintenant initialiser et push ton repo :

```bash
git init
git add .
git commit -m "Ajout du script de suppression AD"
git branch -M main
git remote add origin https://github.com/KuKaRaCHa-gg/AD-DELET-COMPUTER.git
git push -u origin main
```
