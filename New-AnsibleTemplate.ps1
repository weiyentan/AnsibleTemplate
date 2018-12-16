<#
	.SYNOPSIS
		This script is used to create the scaffolding for Ansible templates for Ansible Roles and Ansible Modules.
	
	.DESCRIPTION
		This script uses Plaster to create the scaffolding for templates for Ansible. There are two  types of templating you can create. Roles or Modules
		This script will produce the script into that destination path.
	
	.PARAMETER destination
		This is the destination path of where the template will be. 
	
	.PARAMETER type
		This is the type of template that is to be created. It can accept two types of values: Roles or Modules. 
	
	.EXAMPLE
		C:\PS> .\New-AnsibleTemplate.ps1 -Destination C:\Git\Ansible\Roles\configure-service -type Role
		This will create an Ansible Role called configure-service in  C:\Git\Ansible\Roles\
	.EXAMPLE
		C:\PS> New-AnsibleTemplate -Destination C:\Git\Ansible\Roles\configure-service\library -type Module
		This will create  the necessary templating for Ansible Modules and deploy them to  the C:\Git\Ansible\Roles\configure-service\library directory.
	.NOTES
		===========================================================================
		Created with: 	SAPIEN Technologies, Inc., PowerShell Studio 2019 v5.6.156
		Created on:   	16/12/2018 2:21 PM
		Created by:   	weiyentan
		Organization:
		Filename:
		===========================================================================
#>
[CmdletBinding()]
param
(
	[Parameter(Mandatory = $true,
			   Position = 0)]
	[string]$Destination,
	[Parameter(Mandatory = $true,
			   Position = 1)]
	[ValidateSet('Role', 'Module')]
	[string]$type
)

Import-Module "$PSScriptRoot\HelperModules\Plaster\1.1.3\Plaster.psm1"

if ($PSBoundParameters.ContainsValue('Role'))
{
	Invoke-Plaster -templatepath $PSScriptRoot\Templates\AnsibleRole -destination $Destination
	
	
}

if ($PSBoundParameters.ContainsValue('Module'))
{
	Invoke-Plaster -templatepath $PSScriptRoot\Templates\AnsibleModule -destination $Destination
	
}
