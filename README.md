# ansible-k8s-on-rpi
Installs Kubernetes on Raspberry Pi using Ansible

## How to install Kubernetes master 
* Make sure the intended host for Kubernetes master is in the `hosts` file under the `kubernetes-master` group.
* Run `ansible-playbook install-kubernetes-master.yml -i hosts`
* Profit
