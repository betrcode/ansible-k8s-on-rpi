Role Name
=========

Installs a Kubernetes master node on a Raspberry Pi.

Requirements
------------

None

Role Variables
--------------

A description of the settable variables for this role should go here, including any variables that are in defaults/main.yml, vars/main.yml, and any variables that can/should be set via parameters to the role. Any variables that are read from other roles and/or the global scope (ie. hostvars, group vars, etc.) should be mentioned here as well.

Defaults:
```
k8s:
  archive_url: 'https://github.com/awassink/k8s-on-rpi/archive/master.zip'
  destination_filename: 'k8s-on-rpi.zip'
  tools:
    - unzip
```

`archive url` should be to a URL pointing to a zip file containing "k8s-on-rpi".

`destination_filename` should be the preferred name of the zip file. Doesn't matter what we call it really.

`tools` should be a list of tools needed for the rest of the installation. Probably there is no need to change this default.


Dependencies
------------

None

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - name: Install Kubernetes master
      hosts: kubernetes-master
      become: yes
      roles:
        - betrcode.kubernetes

License
-------

BSD

Author Information
------------------

Max Wenzin
www.crisp.se/max.wenzin
