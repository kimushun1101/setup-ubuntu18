cdls ()
{
    \cd "$@" && ls
}
alias cd="cdls"
alias x="exit"
alias open="xdg-open"
alias pbcopy='xsel --clipboard --input'

alias cm="cd ~/catkin_ws && catkin_make && source devel/setup.bash"
alias cb="cd ~/turtlebot3_ws && colcon build --symlink-install && source install/setup.bash"
export ROS_DOMAIN_ID=50
