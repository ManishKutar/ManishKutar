Write-Host 'Starting with BC Container installation on Windows.'
Install-Module BcContainerHelper -force

$ContainerName = 'ContainerName'

# Image
$artifactUrl = Get-BCArtifactUrl -country "au" -version 19
$imageName = 'Saas19'

# User
$UserName = 'User'
$Password = ConvertTo-SecureString "Pass123" -AsPlainText -Force
$Credential = New-Object System.Management.Automation.PSCredential ($UserName, $Password)
			
<# New-BCContainer -accept_eula `
                -accept_outdated `
                -updateHosts `
                -containername $containername `
   		          -artifactUrl $artifactUrl `
                -imageName $imageName `
                -auth NavUserPassword `
                -Credential $credential
		#>
