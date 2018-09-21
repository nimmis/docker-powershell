From centos:7

COPY rootfs/ /

RUN yum update -y && \
    curl https://packages.microsoft.com/config/rhel/7/prod.repo > /etc/yum.repos.d/microsoft.repo && \
    yum install -y powershell && \
    mkdir -p /data/{scripts,secrets,modules,env} && \
    yum clean all && \
    rm -rf /var/cache/yum

CMD "/usr/bin/pwsh"
