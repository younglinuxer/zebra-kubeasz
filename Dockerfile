# Dockerfile for building images to run kubeasz in a container
#
# @author:  gjmzj
# @repo:     https://github.com/easzlab/kubeasz

FROM easzlab/ansible:2.10.6-lite

ENV KUBEASZ_VER=3.1.0
ADD kubeasz-3.0.0 /etc/kubeasz
ADD kubeasz-3.0.0/ezctl  /usr/bin/ezctl
ADD kubeasz-3.0.0/ezdown  /usr/bin/ezdown
RUN chmod +x /usr/bin/ezctl
RUN chmod +x /usr/bin/ezdown
