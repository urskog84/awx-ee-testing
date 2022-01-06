source venv/bin/activate

cd /home/vagrant/ee-bulder

image=`docker image ls petter/awx-ee -q`

if test -z "$image" 
then
      echo "Nothing to remove"
else
      docker rmi petter/awx-ee
fi


pwd
ansible-builder build --tag petter/awx-ee --container-runtime docker -f execution-environment.yml

docker image list