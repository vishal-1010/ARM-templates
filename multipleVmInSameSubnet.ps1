Connect-AzAccount 

$ResourceGroup = "Testing"
$Location = "centralindia"
$PrefixForVmName = Read-Host -Prompt "Enter the prefix for virtual Machines"
$NumberOfVMs = Read-Host -Prompt "Enter the Numbers of virutal machines to be created"

New-AzResourceGroup `
    -Name $ResourceGroup `
    -Location $Location

New-AzResourceGroupDeployment `
    -Name "multiplevm" `
    -ResourceGroupName $ResourceGroup `
    -TemplateFile "E:\ARM Templates\MultipleInstanceOfVm.json" `
    -NumberOfVMs $NumberOfVMs `
    -PrefixForVmName $PrefixForVmName
