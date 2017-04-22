#Add color for git
yum update
yum install colordiff

#Copy config git to root
cp .gitconfig ~/.gitconfig

#Save password 
git config credential.helper store

