rosservice call /turtle1/teleport_absolute 2 5 2.0670


rosservice call /clear
rosservice call /turtle1/set_pen 0 0 0 2 0
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[1, 0, 0]' '[0, 0, 1.75]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[1, 0, 0]' '[0, 0, 1.75]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[1, 0, 0]' '[0, 0, 0]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[1, 0, 0]' '[0, 0, -1.75]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[1, 0, 0]' '[0, 0, -1.75]'
rosservice call /kill turtle1

rosservice call /spawn 3 5 4.71225 ""
rosservice call /turtle2/set_pen 255 255 255 2 0
rostopic pub -1 /turtle2/cmd_vel geometry_msgs/Twist -- '[2, 0, 0]' '[0, 0, 0]'
rostopic pub -1 /turtle2/cmd_vel geometry_msgs/Twist -- '[1, 0, 0]' '[0, 0, 3]'
rosservice call /kill turtle2

rosservice call /spawn 2.5 4.5 0 ""
rosservice call /turtle3/set_pen 255 255 255 2 0
rostopic pub -1 /turtle3/cmd_vel geometry_msgs/Twist -- '[1, 0, 0]' '[0, 0, 0]'
rosservice call /kill turtle3



