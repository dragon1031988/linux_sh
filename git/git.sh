#Add color for git
yum update
yum -y install colordiff

#Copy config git to root
cp git/.gitconfig ~/.gitconfig

# Config user
git config --global user.name "David"
git config --global user.email dragon1031988@gmail.com
#Save password 
git config credential.helper store

