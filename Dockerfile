FROM ubuntu:latest
MAINTAINER Ngoc Tho "ptntho23@gmail.com"
RUN apt-get update -y
RUN apt-get install -y python3-pip python3-dev python3-venv build-essential
ADD . /flask_app
WORKDIR /flask_app
RUN python3 -m venv myenv
RUN myenv/bin/pip install -r requirements.txt
ENTRYPOINT ["myenv/bin/python"]
CMD ["flask_docker.py"]
