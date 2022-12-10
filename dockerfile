FROM infracloudio/csvserver:latest
#RUN /home/ankit/infra_cloud_assingment/Dockerfile/
#COPY . /home/ankit/infra_cloud_assingment/Dockerfile/
#ADD 70d98424038bf2a5f4e500c1b1f69806bc5585327bde1a9e3d9613e8f2373851 in / 
#RUN  /bin/sh -c yum -y install
#EXPOSE 9393
#CMD ['/bin/sh -c, inputFile']
FROM python:3.7-alpine
WORKDIR /code
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
RUN apk add --no-cache gcc musl-dev linux-headers
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
EXPOSE 9393
COPY . .
CMD ["flask", "run"]
