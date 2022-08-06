#
# This dockerfile is intended as the bastion server that we will use to connect 
# To the cluster and peform administrative activities on the nodes in this cluster 
#
from debian

RUN apt update -y && \
    apt install iputils-ping -y && \
    apt install wget -y && \
    wget -q --show-progress --https-only --timestamping \ 
	https://storage.googleapis.com/kubernetes-the-hard-way/cfssl/1.4.1/linux/cfssl  \
       https://storage.googleapis.com/kubernetes-the-hard-way/cfssl/1.4.1/linux/cfssljson && \ 
    chmod +x cfssl cfssljson && \
    mv cfssl cfssljson /usr/local/bin/

# install kubectl 

RUN wget https://storage.googleapis.com/kubernetes-release/release/v1.21.0/bin/linux/amd64/kubectl && \
    chmod +x kubectl && \
    mv kubectl /usr/local/bin/





