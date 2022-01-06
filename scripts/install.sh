dnf install -y python38
dnf install -y python3-pip
dnf install -y python3-setuptools


alternatives --set python /usr/bin/python3.8


python -m venv venv
source venv/bin/activate

pip install --upgrade pip
pip install setuptools-rust
pip install ansible ansible-builder


ansible --version
ansible-builder --version

