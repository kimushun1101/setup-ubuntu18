sudo locale-gen ja_JP ja_JP.UTF-8
sudo update-locale LC_ALL=ja_JP.UTF-8 LANG=ja_JP.UTF-8
export LANG=ja_JP.UTF-8

sudo apt update
sudo apt install curl gnupg2 lsb-release -y
curl http://repo.ros2.org/repos.key | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64,arm64] http://packages.ros.org/ros2/ubuntu `lsb_release -cs` main" > /etc/apt/sources.list.d/ros2-latest.list'
sudo apt update

export CHOOSE_ROS_DISTRO=dashing
sudo apt install ros-${CHOOSE_ROS_DISTRO}-desktop python3-colcon-common-extensions python3-rosdep python3-argcomplete -y

echo "source /opt/ros/${CHOOSE_ROS_DISTRO}/setup.bash" >> ~/.bashrc
source ~/.bashrc
