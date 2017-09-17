# ansible-k8s-on-rpi
Installs Kubernetes on Raspberry Pi cluster using Ansible

## Prerequisites
* Some Raspberry Pi's. (atleast 2) running Raspbian https://www.raspberrypi.org/downloads/raspbian/
* SSH enabled in Raspbian (see below)

### Enable SSH on a Raspberry Pi (Raspbian)
* put a file named `ssh` in `/boot`
* Boot and login using `pi`/`raspberry`

## How to set password in environment
`export ANSIBLE_SSH_PASS=raspberry`
This environment variable is read from the `group_vars/all.yml`

## How to ping all pis
This will check connectivity
`ansible-playbook -i hosts --limit pajer ping.yml`

## How to install Kubernetes 
* Make sure the intended host for Kubernetes master is in the `hosts` file under the `kubernetes-master` group.
* Make sure the intended hosts for Kubernetes cluster nodes is in the `hosts` file under the `nodes` group.
* Run `ansible-playbook install-kubernetes.yml -i hosts`
* Profit

## References
* Started out by using this as a guide: http://blog.kubernetes.io/2015/12/creating-raspberry-pi-cluster-running.html
* Then found that the script to install Kubernetes wasn't quite working, so started looking at using `kubeadm` instead: http://kubernetes.io/docs/getting-started-guides/kubeadm/

## Tools
* https://etcher.io/ to flash SD cards

