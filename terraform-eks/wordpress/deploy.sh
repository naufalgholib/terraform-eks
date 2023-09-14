#create a secret.yaml file for MySQL and WordPress.	
kubectl apply -f secret.yaml

# create a PersistentVolume to store MySQL and WordPress data.
kubectl apply -f pvc-mysql-wp.yaml


#deploy mysql
kubectl apply -f mysql-deployment.yaml

#deploy wordpress
kubectl apply -f wordpress-deployment.yaml

#get svc and ingress
kubectl get svc
kubectl get ing