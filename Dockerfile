FROM centos:7
USER root
ARG target="/opt/FileMaker/FileMaker Server/CStore/LicenseFile/LicenseCert.fmcert"
RUN bash -c "yum install -y wget"
RUN bash -c "yum install -y sudo"
RUN bash -c "yum install -y unzip"
RUN bash -c "wget https://downloads.claris.com/esd/filemaker_server-19.0.1-22.x86_64.rpm"
RUN bash -c "useradd installer -s /bin/bash -p '*'"
RUN bash -c "usermod -aG wheel installer"
RUN bash -c "passwd -d installer"
USER installer
COPY LicenseCert.fmcert ${target}
RUN bash -c "sudo yum install filemaker_server-19.0.1-22.x86_64.rpm -y"
USER root

# TODO: change default password

# TODO: restart service

ADD start.sh /
RUN chmod +x /start.sh
CMD ["/start.sh"]
