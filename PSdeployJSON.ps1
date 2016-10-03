#Datacenter location
$locName = "northeurope"
#Resource Group Name
$rgName = "Demo"

New-AzureRmResourceGroup -Name $rgName -Location $locName

$deployName="DEMO-DC01"
$templatePath = "C:\Users\Roy\OneDrive\Azure\ADDS\VirtualMachineTemplate1.json"
$parameterFile = "C:\Users\Roy\OneDrive\Azure\ADDS\Parameters1.json"