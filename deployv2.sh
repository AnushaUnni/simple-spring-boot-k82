pwd
ls -lrt
kubectl apply -f k8s
kubectl set image deployments/simple-controller-deployment simple-controller=anushaunni/springboot:$SHA
