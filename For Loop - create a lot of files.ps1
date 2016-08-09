 #Loops
#Tig objecten
#Maak 1000 bestanden aan door middel van de for-loop
# 
# mkdir C:\temp
# (1..1000 | foreach {
#     New-Item -Path 'C:\Temp' -Name "$_.txt" -ItemType file
# })
for ($i = 1; $i -le 1000; $i++)
{ 
    New-Item -Path 'C:\Temp' -Name "$i.txt" -ItemType file
}
 