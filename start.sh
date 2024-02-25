#!/bin/sh
#for restoring the database dump for mysql file 
mysql -u username -p database_name < dumpfile.sql  
minikube docker-env

eval $(minikube docker-env)
docker tag my_fastapi_app:latest $(minikube ip):5000/my_fastapi_app:latest