source venv/bin/activate

cd /home/vagrant/ee-bulder

image=`podman image ls petter/awx-ee -q`

if test -z "$image" 
then
      echo "Nothing to remove"
else
      podman rmi petter/awx-ee
fi


pwd
ansible-builder build --tag petter/awx-ee --container-runtime podman -f execution-environment.yml

podman image list