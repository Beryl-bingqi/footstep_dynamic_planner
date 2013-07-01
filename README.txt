Hello, everyone.

I'm Beryl from team Sparkle. Our final project is implementing a demonstration named "Humanoid Navigation with Dynamic Footstep Plans"(http://www.ros.org/wiki/Papers/ICRA2011_Garimort_Hornung_Bennewitz?highlight=%28PublicationCategory%29). 

This demonstration provides an efficient methods for humanoid robots to adapt the footstep paths to new situations. By using the incremental heuristic search method D* Lite and presenting continuous footstep locations and efficient collision checking, they solved the problem of footstep planning in a new way.

The source code for humanoid_navigation: http://www.ros.org/wiki/humanoid_navigation

The source code just provided a package of humanoid_navigation stack, however, to run the demonstration successfully, we have to install sbpl package and also the arm_navigation, and our package has already contained all packages needed. 

In order to understand the demonstration more thoroughly, despite the provided sample map, we add three new maps to humanoid_navigation/footstep_planner/maps, named "myMap1.gif", "myMap2.gif", and "myMap3.gif", and also three new yaml files with the corresponding name; in order to run them separately, I have written a new launch file for each myMap. 

Actually, the source code has many reminder messages for us, however, this demonstration is a little bit difficult for us to fully understand the structure of the code, so I inserted many ROS_INFO messages to record the trajectory of the function call. If you want to see them, please run the rqt_console to get infomation whatever you want.

Now I want to show you how to run our new code in fuerte step by step: (for groovy, you can have a try)
1. Download the code from Github: 
2. As we all know, please "roscore".
3. "rosmake footstep_planner";
4. If you want to get infomation from rqt_console, I recommand you first run the rqt_console:
   "rosrun rqt_console rqt_console" 
   if you have't installed the rqt_console, please run the following command first:
   "sudo apt-get install ros-<distro>-rqt"   
   "distro" can be groovy / fuerte... 
5. roslaunch the map:
   4.1 "roslaunch footstep_planner footstep_planner_complete.launch" --> to run the sample map the source code provided;
   4.2 "roslaunch footstep_planner footstep_planner_mymap1.launch" --> obviously, this command will run our 1st map;
   4.2 "roslaunch footstep_planner footstep_planner_mymap2.launch" --> run our 2nd map;
   4.3 "roslaunch footstep_planner footstep_planner_mymap3.launch" --> run our 3rd map;
   Don't forget your rqt_console, just have a look; 
6. Now, you should see the familiar rviz, right? 
   5.1 Click on the "2D Nav Goal", set a goal pose for the simulator;
   5.2 Click on the "2D Pose Estimate", set a start pose for the simulator;
   5.3 Show your patience! 
   If everthing is right, now you can see the lovely trajectory performed by the simulator! Yes!
7. There are some special problems you may encounter:
   7.1 The command line shows the following Error Messages:
        "Goal pose at (-0.596697 -0.082334 -1.588568) not accessible."
	"Start pose (1.003069 -0.006872 0.000000) not accessible."
	These information just inform you that the goal / start pose you specified is too close to some obstacles, and the robot don't have enough space to move, or something like that, since the demonstration used a footstep model and parameterization of the Nao robot, so in order to move the robot, there would be some constrains in terms of the goal / start pose;
	"no solution..." 
	This information just inform you that the robot cannot move to the specified goal pose from the start pose.
        After seeing these infomation, you can specify another valid start / goal pose, and the demonstration can run continuously.
   7.2 After launching myMap3, you may ask why the robot just walk through the long thin obstacle on the right upper side, yes, the robot can just step over that small obstacle, it's not a big deal for it!


If you cannot run the code, please let me know.
Thank your for your attention. 

Beryl
Spakle
