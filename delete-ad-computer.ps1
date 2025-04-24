Import-Module ActiveDirectory

$machines = Import-Csv -Path "C:\Temp\pcs.csv"

foreach ($machine in $machines) {
    $nom = $machine.Nom.Trim()

    # Recherche dynamique de l'ordinateur dans l'AD
    $computer = Get-ADComputer -Filter "Name -eq '$nom'" -Properties DistinguishedName

    if ($computer) {
        $dn = $computer.DistinguishedName

        try {
            # Suppression de l'objet AD avec Remove-Item
            Remove-Item -Path ("AD:\" + $dn) -Recurse -Confirm:$false
            Write-Host "✅ Supprimé : $nom" -ForegroundColor Green
        }
        catch {
            Write-Host "⚠️ Échec de la suppression de $nom : $($_.Exception.Message)" -ForegroundColor Yellow
        }
    } else {
        Write-Host "❌ Non trouvé : $nom" -ForegroundColor Red
    }
}
