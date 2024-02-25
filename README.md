# clirnet-assignment
The assignment Is based upon minimum security threshold for running in local environment strictly not to be used for the production environment 
#
### Environment Variables :
<li> WORDPRESS_DB_HOST
<li> WORDPRESS_DB_NAME
<li> WORDPRESS_DB_USER
<li> WORDPRESS_DB_PASSWORD

### Prerequisites : ###
<li> Docker installed and running
<li> Minikube installed and started
<li> kubectl configured to communicate with your Minikube cluster

##

##### Dependencies are declared in requirements.txt file 
####
##
### Buillding Images : FastAPI Application
```sh
docker build -t my_fastapi_app .
```
Apply Deployment and service YAML files 
```sh
kubectl apply -f fastapi-deployment.yml
kubectl apply -f fastapi-service.yml
```
Access the FastAPI Application:
```sh
minikube service my-fastapi-service --url
```
### Buillding Images : Wordpress
```sh
docker build -t wordpress-image .
```
you can run this command samultaneusly to runa  SQL command but not in node 
```sh
docker run --name my-wordpress-db -e MYSQL_ROOT_PASSWORD=password -e MYSQL_DATABASE=wordpress -d mysql:latest
```
 Run the WordPress container and link it to the MySQL container. Use the following command:
 ```sh
 docker run --name my-wordpress-site -p 8080:80 --link my-wordpress-db:mysql -d my-wordpress-image
```
Apply YAML files to Minikube: SQL and Wordpress 
```sh
kubectl apply -f mysql-deployment.yml
kubectl apply -f wordpress-deployment.yml
kubectl apply -f mysql-service.yml
```
Access WordPress using following command line :
```sh
minikube service wordpress-service
```
***Thanks***