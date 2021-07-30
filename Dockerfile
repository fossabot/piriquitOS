FROM library/ubuntu:latest

VOLUME /home/admin/Desktop/projects/
WORKDIR /home/admin/Desktop/projects/

RUN apt-get update -y
RUN apt-get install -y apt-utils --no-install-recommends
RUN apt-get install -y git gcc ninja-build grub-common build-essential gcc-multilib wget --no-install-recommends
RUN apt-get install --reinstall ca-certificates -y --no-install-recommends
RUN mkdir /usr/local/share/ca-certificates/cacert.org
RUN wget -P /usr/local/share/ca-certificates/cacert.org http://www.cacert.org/certs/root.crt http://www.cacert.org/certs/class3.crt
RUN update-ca-certificates
RUN git config --global http.sslCAinfo /etc/ssl/certs/ca-certificates.crt
RUN git clone --depth 1 https://github.com/fgsoftware1/fgOS-BETA.git
