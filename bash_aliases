cdls ()
{
    \cd "$@" && ls
}
alias cd="cdls"
alias x="exit"
alias cm="cd ~/catkin_ws && catkin_make && source devel/setup.bash
