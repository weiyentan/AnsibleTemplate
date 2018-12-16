<#
	.SYNOPSIS
		A brief description of the New-AnsibleTemplate.ps1 file.
	
	.DESCRIPTION
		A description of the file.
	
	.PARAMETER Destination
		A description of the Destination parameter.
	
	.PARAMETER type
		A description of the type parameter.
	
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
