Add-AzureRmAccount
Select-AzureRMSubscription -SubscriptionName RABO-T01-CloudDelivery
get-command | where {$_.Name -like "*vm*"} 
Get-AzureRmVMExtension -ResourceGroupName $RGName -VMName $VMName -Name "CustomScriptExtension" -Status
$RGName = "RG-T01-INF-VM-001"
Get-AzureRmVM -ResourceGroupName $RGName | fl
$VMName = "PROX01"
Get-AzureRmVMExtension -ResourceGroupName $RGName -VMName $VMName
get-help Get-AzureRmVMExtension -Detailed
$ExtensionName = "IaaSDiagnostics"
$ExtensionName = "VMAccessAgent"
$ExtensionName = "BGInfo"
$ExtensionName = "CustomScriptExtension"
$ExtensionName = "IaaSAntimalware"
Get-AzureRmVMExtension -ResourceGroupName $RGName -VMName $VMName -Name $ExtensionName | select *
(Get-AzureRMVM -ResourceGroupName $RGName).ResourceExtensionStatusList

# Het uiteindelijke commando
# List the installed extensions of a specific VM and show the ProvisioningState
(Get-AzureRMVM -ResourceGroupName $RGName -Name $VMName).Extensions | select VirtualMachineExtensionType,ProvisioningState