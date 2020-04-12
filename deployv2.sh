docker build -t anushaunni/springboot:latest -t anushaunni/springboot:$SHA .
docker push anushaunni/springboot:latest
docker push anushaunni/springboot:$SHA
kubectl apply -f k8s
kubectl set image deployments/simple-controller-deployment simple-controller=anushaunni/springboot:$SHA
