#Maak een array met namen erin
#Controleer met Where-Object of er een bepaalde naam in zit (kies 1)
# gebruik de volgende operators
# -contains
# -notcontains

cls
$Array = @()
$Array.GetType()
# $Array.Add('Paap')  <--- dit werkt niet
$Array = ($Array + 'Paapje' + 'Jeff' + 'Naam3' + 'Paapje')
$array | Where-Object {$_ -contains 'Paapje'}
Write-Host ''
$Array -contains 'Paapje'