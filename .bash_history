sudo hostnamectl hostname Master
sudo kubeadm init --pod-network-cidr=192.168.0.0/16 
mkdir -p $HOME/.kube
kubectl apply -f https://raw.githubusercontent.com/projectcalico/calico/v3.26.1/manifests/calico.yaml 
kubeadm token create --print-join-command                    
kubectl get nodes
mkdir backend
mkdir frontend
mkdir k8s
cd frontend
cd ..
cd backend/
vim Dockerfile
cd ..
cd frontend/
vim default.conf
docker login -u spquantum
vim Dockerfile
cd ..
cd backend/
vim Dockerfile
cd. ..
cd ..
cd k8s/
vim frontend-deployment.yml
vim backend-deployment.yml
vim mysql-deployment.yml
cd ..
cd backend/
ls
cd ..
cd frontend/
ls
sudo apt install unzip
ls
sudo apt install unzip
unzip dis
sudo apt install unrar -y
mkdir -p dist
unrar x dist.rar dist/
ls
cd dist/
ls
cd config/
vim Config.js 
cd ..
ls
docker build -t spquantum/frontend:z11 .
docker push spquantum/frontend:z11
cd ..
cd backend/
docker build -t spquantum/backend:z11 .
docker push spquantum/backedn:z11
docker push spquantum/backend:z11
cd ..
cd k8s/
ls
kubectl get nodes
kubectl apply -f .
kubectl get pods
kubectl get svc
kubectl logs mysql-5fbfdbfc8f-qqhtc 
kubectl logs backend-deployment-6fd566966f-qbwwz 
kubectl get pods
kubectl logs frontend-deployment-65dbf6db6f-lpjqb 
kubectl get pods
cat backend-deployment.yml 
cat frontend-deployment.yml 
cat mysql-deployment.yml 
kubectl get pods
kubectl logs backend-deployment-6fd566966f-qbwwz 
kubectl get pods
kubectl logs frontend-deployment-65dbf6db6f-lpjqb
cd ..
cd frontend/
cat default.conf 
cd ..
cd k8s/
cat backend-deployment.yml 
kubectl delete all --all
sudo rm backend-deployment.yml 
vim backend-deployment.yml
kubectl apply -f .
kubectl get pods
kubectl describe pod backend-deployment-5ff6f6dd8b-97j9x | grep MYSQL
cat backend-deployment.yml 
vim backend-deployment.yml 
kubectl delete all --all
kubectl apply -f .
kubectl get pods
kubectl describe pod backend-deployment-5ff6f6dd8b-97j9x | grep MYSQL
kubectl get pods
kubectl describe pod backend-deployment-6c49d654dd-dhrmv | grep MYSQL
kubectl run mysql-client --rm -i --tty --image=mysql:8 -- bash
kubectl get svc -A | grep mysql
kubectl run mysql-client --rm -i --tty --image=mysql:8 -- bash
kubectl run mysql-client --rm -i --tty --image=mysql:8 --namespace=default -- bash
kubectl get pods -n kube-system -o wide | grep coredns
kubectl run dnsutils --rm -i --tty --image=busybox:1.28 --restart=Never -- nslookup mysql-service
kubectl run testpod --rm -i --tty --image=busybox:1.28 --restart=Never -- sh
kubectl get pods -n kube-system -o wide | grep kube-proxy
kubectl delete pod -n kube-system -l k8s-app=kube-dns
kubectl rollout restart daemonset/kube-proxy -n kube-system
sysctl net.ipv4.ip_forward
# Should output: net.ipv4.ip_forward = 1
kubectl apply -f https://raw.githubusercontent.com/projectcalico/calico/v3.26.1/manifests/calico.yaml
kubectl logs -n kube-system coredns-76f75df574-gckkg
kubectl get pods -n kube-system -l k8s-app=kube-dns
kubectl logs -n kube-system coredns-76f75df574-dxjrq
kubectl logs -n kube-system coredns-76f75df574-hrcnz
cat /var/lib/kubelet/config.yaml | grep clusterDNS
sudo nano /var/lib/kubelet/config.yaml
kubectl run dns-test --rm -i --tty --image=busybox:1.28 --restart=Never -- sh
kubectl get pods | grep mysql
kubectl run mysql-client --rm -i --tty --image=mysql:8 -- bash
kubectl rollout restart deployment backend-deployment
kubectl get pods
kubectl logs backend-deployment-85b5757bf4-l6mbc
cd ..
cd backend/
cat Dockerfile 
sudo rm Dockerfile 
vim Dockerfile
docker build -t spquantum/backend:z11 .
docker push spquantum/backend:z11
cd ..
cd k8s/
ls
kubectl delete all --all
kubectl apply -f .
kubectl get pods
kubectl get svc
kubectl get pods
kubectl logs backend-deployment-6c49d654dd-bcn2m 
kubectl get pods
kubectl logs frontend-deployment-65dbf6db6f-tvpbt 
kubectl get pods
kubectl logs mysql-5fbfdbfc8f-rkkg8 
kubectl get all
cd ..
cd frontend/
ls
cd dist/
cd config/
vim Config.js 
cd ..
cat default.conf 
cat Dockerfile 
kubectl logs deployment/frontend-deployment
ls
cd dist
ls
kubectl get pods
clear
kubectl get pods
kubectl exec -it mysql-5fbfdbfc8f-rkkg8 -- /bim/bash
kubectl exec -it mysql-5fbfdbfc8f-rkkg8 -- /bin/bash
kubectl get pods
kubectl get svc
kubectl get nodes
kubectl get pvc
kubectl get pv
cd k8s/
ls
vim persistent-volume.yml
vim pvc.yml
vim cronjob.yml
kubectl apply -f persistent-volume.yml 
kubectl apply -f pvc.yml 
kubectl apply -f cronjob.yml 
cd ..
ls -l /mnt/data
clear
kubectl get pv
kubectl get pvc
kubectl get pods -o wide
