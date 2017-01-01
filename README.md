# ansible-k8s-on-rpi
Installs Kubernetes on Raspberry Pi using Ansible

## How to install Kubernetes master 
* Make sure the intended host for Kubernetes master is in the `hosts` file under the `kubernetes-master` group.
* Run `ansible-playbook install-kubernetes-master.yml -i hosts`
* Profit

## References
* Started out by using this as a guide: http://blog.kubernetes.io/2015/12/creating-raspberry-pi-cluster-running.html
* Then found that the script to install Kubernetes wasn't quite working, so started looking at using `kubeadm` instead: http://kubernetes.io/docs/getting-started-guides/kubeadm/

