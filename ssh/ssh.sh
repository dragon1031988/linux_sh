# Create new ssh key
yum -y update
yum -y install openssh-server openssh-clients

ssh-keygen -t rsa -b 4096
cat ~/.ssh/id_rsa.pub
