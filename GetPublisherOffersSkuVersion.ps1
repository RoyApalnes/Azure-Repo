#DataCenter Location
$loc = "North Europe"
#Find all the available publishers
Get-AzureRmVMImagePublisher -Location $loc | Select PublisherName
#Pick a publisher
$pubName="MicrosoftWindowsServer"
Get-AzureRmVMImageOffer -Location $loc -Publisher $pubName | Select Offer
#Pick a specific offer
$offerName="WindowsServer"
#View the different SKUs
Get-AzureRmVMImageSku -Location $loc -Publisher $pubName -Offer $offerName | Select Skus
#Pick a specific SKU
$skuName = "2016-Nano-Server"
#View the versions of a SKU
Get-AzureRmVMImage -Location $loc -PublisherName $pubName -Offer $offerName -Skus $skuName
#Pick a specific image version
$version = "2016.0.20161010"