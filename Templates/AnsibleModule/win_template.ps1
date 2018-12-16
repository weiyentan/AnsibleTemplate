#!powershell
# This file is part of Ansible

# GNU General Public License v3.0+ (see COPYING or https://www.gnu.org/licenses/gpl-3.0.txt)

#Requires -Module Ansible.ModuleUtils.Legacy.psm1

$ErrorActionPreference = 'Stop'

$params = Parse-Args -arguments $args -supports_check_mode $true
$check_mode = Get-AnsibleParam -obj $params -name "_ansible_check_mode" -type "bool" -default $false
$diff_mode = Get-AnsibleParam -obj $params -name "_ansible_diff" -type "bool" -default $false

# these are your module parameters, there are various types which can be
# used to format your parameters. You can also set mandatory parameters
# with -failifempty, set defaults with -default and set choices with
# -validateset.
$string = Get-AnsibleParam -obj $params -name "string" -type "str" -failifempty $true
$bool = Get-AnsibleParam -obj $params -name "bool" -type "bool" -default $false
$int = Get-AnsibleParam -obj $params -name "int" -type "int"
$path = Get-AnsibleParam -obj $params -name "path" -type "path"
$list = Get-AnsibleParam -obj $params -name "list" -type "list"
$choices = Get-AnsibleParam -obj $params -name "choices" -type "str" -default "present" -validateset "absent", "present"

$result = @{
    changed = $false
}

if ($diff_mode) {
    $result.diff = @{}
}

# code goes here

# you can add/set new result objects with
$result.changed = $true
$result.new_result = "Hi"

Exit-Json -obj $result

# Reference
# https://docs.ansible.com/ansible/2.6/dev_guide/developing_modules_general_windows.html
# https://docs.ansible.com/ansible/2.4/dev_guide/developing_modules_general_windows.html