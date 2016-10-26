#Datacenter location
$locName = "northeurope"
#Resource Group Name
$rgName = "Demo"

New-AzureRmResourceGroup -Name $rgName -Location $locName

$deployName="DEMO-DC01"
$templatePath = "C:\Users\RoyAPALNES\OneDrive\Azure\GitRepo\VirtualMachineTemplate3.json"
$parameterFile = "C:\Users\RoyAPALNES\OneDrive\Azure\GitRepo\Parameters3.json"

New-AzureRmResourceGroupDeployment -Name $deployName -ResourceGroupName $rgNamep -TemplateFile $templatePath -TemplateParameterFile $parameterFile