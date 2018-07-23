SCALABLE system setup
=======

Last update: 07/23/2018 by Ludovic

### Fresh install
First [Install ROS Kinetic](http://wiki.ros.org/kinetic/Installation)

Then the wstools and catkin-tools:
> $ sudo apt-get install python-wstool python-catkin-tools

Create new workspace:
> $ cd ~  
> $ mkdir scalable_ws  

Initialize your SCALABLE workspace:

> $ cd scalable_ws  
> $ wstool init src https://raw.githubusercontent.com/ScalABLE40/scalable_system_setup/master/config/release.rosinstall  
> $ rosdep install --from-paths src --ignore-src --rosdistro=kinetic -y  
> $ catkin build  
> $ source devel/setup.bash  

### Updating the workspace from source
To update the workspace run:

> $ scalable update release.rosinstall

The default rosinstall is <code>release.rosinstall</code>. See all rosinstall in <code>scalable_system_setup/config</code>.

### Bash commands
Source the workspace:
> $ cd ~/scalable_ws/  
> $ source devel/setup.bash  

Build the workspace:
> $ catkin build

Run the tests:
> $ catkin run_tests

After running catkin build some bash commands will be available. (check them out typing scalable and tab).
