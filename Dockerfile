    FROM centos:7
    USER root
    RUN bash -c "yum install -y wget"
    RUN bash -c "yum install -y sudo"
    RUN bash -c "yum install -y unzip"
    RUN bash -c "wget https://downloads.claris.com/esd/filemaker_server-19.0.1-22.x86_64.rpm"
    RUN bash -c "useradd installer -s /bin/bash -p '*'"
    RUN bash -c "usermod -aG wheel installer"
    RUN bash -c "passwd -d installer"
    USER installer
    RUN bash -c "sudo yum install filemaker_server-19.0.1-22.x86_64.rpm -y"
    USER root
    ADD start.sh /
    RUN chmod +x /start.sh
    CMD ["/start.sh"]
