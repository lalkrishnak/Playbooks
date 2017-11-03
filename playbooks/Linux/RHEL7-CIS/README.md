RHEL 7 CIS Playbook
================

Example Playbook
-------------------------

```
- name: RHEL7 Hardening
  hosts: server
  become: yes

  roles:
    - RHEL7-CIS
```
