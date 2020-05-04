# sample-docker-application

This is the source code of the docker image at dishantanand/sampleapi on Dockerhub
  (Url - https://hub.docker.com/repository/docker/dishantanand/sampleapi)

Step 1 : Git clone sample-docker-application using below command
         
         git clone https://github.com/d-synchronized/sample-docker-application.git

Step 2: cd sample-docker-application

Step 3: docker build -t sample-application:v1 .

Step 4: docker run -d -p 8090:8090 sample-application:v1
                       OR
        docker run -d sample-application:v1
        
Step 5: curl localhost:8090, if using -p (port mapping while running container), else use below command
       docker inspect --format '{{ .NetworkSettings.IPAddress }}' container_name_or_id
       
       Using above command we can easily obtain the IP address of the running docker container. using the returned IP 
       we can easily verify if the node service is running. 'curl IPADDRESS_OF_CONTAINER:8090'

Note -: Different version of this application will be used along with K8s to understand various functionalities of Docker

