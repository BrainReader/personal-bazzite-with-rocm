set -ouex pipefail

dnf -y install https://repo.radeon.com/amdgpu-install/6.4.3/rhel/9.6/amdgpu-install-6.4.60403-1.el9.noarch.rpm
dnf clean all
wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm
rpm -ivh epel-release-latest-9.noarch.rpm
dnf -y install dnf-plugin-config-manager
crb enable
dnf -y install python3-setuptools python3-wheel
usermod -a -G render,video $LOGNAME # Add the current user to the render and video groups
dnf -y install rocm
