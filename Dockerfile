FROM vimal13/jenkins-slave-maven:latest

RUN wget curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.18.0/bin/linux/amd64/kubectl
RUN chmod +x kubectl
RUN mv kubectl  /usr/bin/

COPY /root/client.key  /root/
COPY /root/client-certificate  /root/
COPY /root/certificate-authority  /root/
COPY /root/.kube/config  /root/.kube
COPY -RT /root/knit/  /var/www/html/

