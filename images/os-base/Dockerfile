FROM rancher/os-base:v0.8.0
COPY ./ros /usr/bin/ros
RUN sed -i 's/#Port 22/Port 23/g' /etc/ssh/sshd_config
