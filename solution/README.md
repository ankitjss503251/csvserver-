# csvserver
# command used in part1

# making root user
sudo su

# login docer to dockerhub
docker login

# pull the csvserver image from docker dockerhub
docker pull infracloudio/csvserver:latest

# run this image to create container
docker run csvserver


# created a gencsv script and content generate and stored in inputFile automatically
nano gencsv.sh


# set permission for gencsv.sh and run this script and it'll generate random numbers
chmod +x gencsv.sh
./gencsv.sh

# copy & paste inputFile to docker container's tmp folder
docker cp inputFile container_id:/tmp

# enter that container
docker exec -it container_id /bin/sh

# created a app
app.py

# requirement file
requirement.txt


# created dir
mkdir Dockerfile


# created dockerfile      
nano dockerfile

# comand for build image 
docker build -t dockerfile .

# command for container creation using build image(dockerfile) and check your app is running on localhost:9393
docker run  dockerfile
or
docker run -it dockerfile sh


# copy & paste inputFile to docker container's tmp folder
docker cp inputFile container_id:/tmp

# enter that container
docker exec -it container_id /bin/sh

# after enter that continer go to tmp folder to check that inputFile is there are not.
cd tmp/
ls -l

# exit from container
exit + enter

# create prometheus and alert file for the running the prometheus and exporting the data.
nano prometheus.yml
nano alert.yml

# create docker-compose file for our app and prometheus
nano docker-compose.yml


# run this docker-compose file
docker-compose up
or
docker-compose up -d


# running server
http://localhost:9393/
http://localhost:9090/graph
