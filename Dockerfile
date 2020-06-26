FROM centos:7

# Install chromium
RUN yum install -y epel-release
RUN yum install -y chromium
# Misc
RUN yum install -y curl gcc-c++ make

# Install node
RUN curl -sL https://rpm.nodesource.com/setup_12.x | bash -
RUN yum install -y nodejs
WORKDIR /build

CMD ["/usr/bin/true"]