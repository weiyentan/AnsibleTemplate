# AnsibleTemplate
This is a PowerShell module to have an equivalent of ansible-init. It is a way to scaffold Ansible Playbooks/Ansible Libraries and Ansible Collections. It uses Plaster as a helper module to achieve the tasks being done.

Here are some examples of how to use it:
```
c:\PS> mkdir configure-iis
C:\PS> New-AnsibleTemplate -Destination  configure-iis -type role
```
After creating a directory called configure-iis, the New-AnsibleTemplate cmdlet  creates a role template called configure-iis in the current directory 

```

C:\PS> New-AnsibleTemplate -Destination C:\Git\Ansible\Roles\configure-iis\library -type Module

```
This creates an ansible library  that sits in the role configure-iis under the library directory. It is primary for windows templates.


```
C:\PS> mkdir ~\git\example-collection
C:\PS> New-AnsibleTemplate -destination ~\git\example-collection -type Collections
```
This creates scaffolding for Ansible collections.