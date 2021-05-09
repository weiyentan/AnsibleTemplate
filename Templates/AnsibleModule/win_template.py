#!/usr/bin/python
# -*- coding: utf-8 -*-

# Copyright Block
# Copyright (c) 2018, [New Contributor(s) - REPLACE THIS]
# GNU General Public License v3.0+ (see COPYING or https://www.gnu.org/licenses/gpl-3.0.txt)

# ANSIBLE_METADATA Block
# ANSIBLE_METADATA contains information about the module for use by other tools. At the moment, it informs other tools which type of maintainer the module has and to what degree users can rely on a module’s behaviour remaining the same over time.
ANSIBLE_METADATA = {
    'metadata_version': '1.0',
    'status': ['preview'],
    'supported_by': 'community'
}

DOCUMENTATION = '''
---
module: modulename
version_added: "0.1"
short_description: This is a sentence describing the module
description:
 - Multiline allowed
options:
notes:
author:
'''

EXAMPLES = '''
- name: Ensure foo is installed
  modulename:
    name: foo
    state: present
'''

RETURN = '''
dest:
    description: destination file/path
    returned: success
    type: string
    sample: /path/to/file.txt
src:
    description: source file used for the copy on the target machine
    returned: changed
    type: string
    sample: /home/httpd/.ansible/tmp/ansible-tmp-1423796390.97-147729857856000/source
md5sum:
    description: md5 checksum of the file after running copy
    returned: when supported
    type: string
    sample: 2a5aeecc61dc98c4d780b14b330e3282
...
'''

# Ref
# https://docs.ansible.com/ansible/2.3/dev_guide/developing_modules_documenting.html
