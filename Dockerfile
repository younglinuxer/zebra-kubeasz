# Dockerfile for building images to run kubeasz in a container
#
# @author:  gjmzj
# @repo:     https://github.com/easzlab/kubeasz

FROM easzlab/ansible:2.10.6-lite

ENV KUBEASZ_VER=3.1.0
ADD kubeasz-3.0.0 /etc/kubeasz
RUN chmod a+x   /etc/kubeasz/ezctl
RUN chmod a+x   /etc/kubeasz/ezdown
RUN ln -s -f /etc/kubeasz/ezctl /bin/ezctl
RUN ln -s -f /etc/kubeasz/ezdown  /bin/ezdown

