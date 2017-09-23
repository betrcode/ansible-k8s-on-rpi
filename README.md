# ansible-k8s-on-rpi
Installs Kubernetes on Raspberry Pi cluster using Ansible

## Prerequisites
* Some Raspberry Pi's. (atleast 2) running Hypriot OS: https://github.com/hypriot/image-builder-rpi/releases/download/v1.5.0/hypriotos-rpi-v1.5.0.img.zip
* SSH enabled (see below)

### Enable SSH on a Raspberry Pi (Raspbian)
Needed for Raspbian - not for Hypriot OS
* put a file named `ssh` in `/boot`
* Boot and login using `pi`/`raspberry`

## How to set password in environment
* For Hypriot OS: `export ANSIBLE_SSH_PASS=hypriot`
* For Raspbian: `export ANSIBLE_SSH_PASS=raspberry`
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

## Control the k8s cluster from your local machine
* Install kubectl: https://kubernetes.io/docs/tasks/tools/install-kubectl/
* Get the cluster admin.conf to your local machine: `ansible-playbook -i hosts install-kubernetes.yml --tags "copy-admin"`

## Proxy API to localhost
* `kubectl --kubeconfig ./fetched_files/192.168.99.117/root/admin.conf proxy --port 8080`

## Visualize k8s cluster
* Prerequisite: You have the API proxied to localhost:8080
* See: https://github.com/brendandburns/gcp-live-k8s-visualizer 
* `git clone https://github.com/brendandburns/gcp-live-k8s-visualizer.git`
* `kubectl proxy --www=/home/max/work/gcp-live-k8s-visualizer/ --www-prefix=/my-mountpoint/ --api-prefix=/api/ --port=8001`
* http://127.0.0.1:8001/my-mountpoint/