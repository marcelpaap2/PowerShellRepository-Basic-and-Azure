## Dit is een functie
## Deze commentariering sloopt niet de help

function Get-Name 
{
<#
  .SYNOPSIS
  This function displays first and lastname.
  .DESCRIPTION
  This function displays first and lastname.It is my first function
  .EXAMPLE
  Get-Name voornaam achternaam
  .EXAMPLE
  Get-Name -FirstName [voornaam] -LastName [achternaam]
  .PARAMETER FirstName
  The first name to use. Just one. It is a string
  .PARAMETER LastName
  The last name to use. Just one. It is a string
  #>

    Param (
        [parameter(Mandatory=$true,Position=0)][string]$FirstName,
        [parameter(Mandatory=$true,Position=1)][string]$LastName
    )
    #Inline comment
    "{0}{1}" -f ($FirstName+" "),$LastName
}