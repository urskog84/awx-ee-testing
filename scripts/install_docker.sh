dnf config-manager --add-repo=https://download.docker.com/linux/centos/docker-ce.repo


dnf update
dnf install -y docker-ce docker-ce-cli containerd.io



systemctl enable docker
systemctl start docker


systemctl status docker

if [ $(getent group docker) ]
then
    echo "docker grp exist"
else
    echo "add grp docker"
    groupadd docker
fi

usermod -aG docker vagrant

docker info