# cloudformation - Microk8s

## Demo de instancia EC2 con Microk8s Region virginia, modificar el parametro de la llave pem
```
# instala automaticamente microk8s
sh instanciamicrok8s.sh 
microk8s registry -> https://microk8s.io/docs/registry-built-in
microk8s Ingress -> https://microk8s.io/docs/addon-ingress
microk8s metalb -> https://microk8s.io/docs/addon-metallb (opcional)
```
## Pasos para ejecutar ingress
```
docker build . -t my-microk8s-app
docker tag my-microk8s-app localhost:32000/my-microk8s-app
docker push localhost:32000/my-microk8s-app
microk8s.kubectl apply -f bar.yml
microk8s.kubectl apply -f foo.yml

microk8s.kubectl expose deployment foo-app --type=LoadBalancer --port=8080
microk8s.kubectl expose deployment bar-app --type=LoadBalancer --port=8080

microk8s.kubectl apply -f ingress.yml
```
## Probando el app whoami
```
microk8s.kubectl apply -f whoami/.

```
## Curl EndPoint
```
curl -kL http://127.0.0.1/bar
curl -kL http://127.0.0.1/foo
curl -kL http://127.0.0.1/whoami

curl -kL http://{miippublica}/bar
curl -kL http://{miippublica}/foo
curl -kL http://{miippublica}/whoami
```