bag=rosbag('catkin_ws/src/mrc_hw3/data/myturtle.bag')
msg_pose=rosmessage('turtlesim/Pose')
showdetails(msg_pose)
bagselect= select(bag,'Topic','turtle1/pose')
ts=timeseries(bagselect,'X','Y','Theta','LinearVelocity','AngularVelocity')
x=ts.data(:,1)
y=ts.data(:,2)
th=ts.Data(:,3)
vel=ts.data(:,4)
twist=ts.data(:,5)

plot(ts)







u=vel.*cos(th)
v=vel.*sin(th)
ii=1:10:length(x);
quiver(x(ii),y(ii),u(ii),v(ii))
title('Quiver Plot of turtle1/pose')
axis([3 10 4 10])
xlabel('X position')
ylabel('Y position')
plot(x,y)
title('Position in XY')
axis([3 10 4 10])
xlabel('X position')
ylabel('Y position')
plot(ts.data(:,3))
title('Theta vs Time')
axis([0 2000 -2.5*pi 2.5*pi])
xlabel('Time (ms)')
ylabel('Theta (degrees)')