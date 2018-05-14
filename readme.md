SCALABLE system setup
=======

Last update: 20/12/2017  

### Fresh install

To initialize your SCALABLE workspace run:

> cd scalable_workspace  
> wstool init src https://github.com/ScalABLE40/scalable_system_setup/raw/master/config/scalable.rosinstall  

> rosdep install --from-paths src --ignore-src --rosdistro=kinetic -y  
> catkin build

### Bash commands

After running catkin make some bash commands will be available. (check them out typing scalable and tab).

To update the workspace run:  

> scalable update my.rosinstall

The default rosinstall is <code>scalable.rosinstall</code>. See all rosinstall in <code>scalable_system_setup/config</code>.
