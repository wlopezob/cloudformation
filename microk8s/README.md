# cloudformation

## Demo de instancia EC2 en virginia, modificar el parametro de la llave pem
```
sh instanciamicrok8s.sh 
microk8s registry -> https://microk8s.io/docs/registry-built-in
microk8s Ingress -> https://microk8s.io/docs/addon-ingress
microk8s metalb -> https://microk8s.io/docs/addon-metallb
```
## Pasos para probar el ingress
```
docker build . -t my-microk8s-app
docker tag my-microk8s-app localhost:32000/my-microk8s-app
docker push localhost:32000/my-microk8s-app
microk8s.kubectl apply -f bar.yml
microk8s.kubectl apply -f foo.yml
```
