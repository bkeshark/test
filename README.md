# test
This is first commit

https://www.linode.com/docs/kubernetes/how-to-deploy-nginx-on-a-kubernetes-cluster/

####################
run this on master
kubeadm init --apiserver-advertise-address=10.128.0.17 --pod-network-cidr=192.168.0.0/16
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
kubectl get nodes
kubectl get pods --all-namespaces
kubectl get -o wide pods --all-namespaces
kubectl apply -f  https://docs.projectcalico.org/v3.8/manifests/calico.yaml
kubeadm token create --print-join-command

####################
run this on node
kubeadm join 10.128.0.17:6443 --token bchkmb.egs82ryi1it89lmm     --discovery-token-ca-cert-hash sha256:94dbb175b5199d0495b94964ab9f0dc3992ba2392500179b727e6c24c7eb14f2 
testing login