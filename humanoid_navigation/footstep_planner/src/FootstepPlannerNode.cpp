// SVN $HeadURL: https://alufr-ros-pkg.googlecode.com/svn/trunk/humanoid_navigation/footstep_planner/src/FootstepPlannerNode.cpp $
// SVN $Id: FootstepPlannerNode.cpp 2105 2011-10-24 13:19:32Z hornunga@informatik.uni-freiburg.de $

/*
 * A footstep planner for humanoid robots
 *
 * Copyright 2010-2011 Johannes Garimort, Armin Hornung, University of Freiburg
 * http://www.ros.org/wiki/footstep_planner
 *
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, version 3.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

#include <footstep_planner/FootstepPlannerNode.h>

namespace footstep_planner
{
	FootstepPlannerNode::FootstepPlannerNode()
	{
		ros::NodeHandle nh;

		// provide callbacks to interact with the footstep planner:
		ivGridMapSub = nh.subscribe<nav_msgs::OccupancyGrid>("map", 1, &FootstepPlanner::mapCallback, &ivFootstepPlanner);
ROS_INFO("FootstepPlannerNode:: ");
		ivGoalPoseSub = nh.subscribe<geometry_msgs::PoseStamped>("goal", 1, &FootstepPlanner::goalPoseCallback, &ivFootstepPlanner);
		ivStartPoseSub = nh.subscribe<geometry_msgs::PoseWithCovarianceStamped>("initialpose", 1, &FootstepPlanner::startPoseCallback, &ivFootstepPlanner);

//		if (ivFootstepPlanner.getPlanningMode() == FootstepPlanner::ROBOT_NAVIGATION)
//			ivRobotPoseSub = nh.subscribe<geometry_msgs::PoseWithCovarianceStamped>("amcl_pose", 1, &FootstepPlanner::robotPoseCallback, &ivFootstepPlanner);

		// service:
		ivFootstepPlanService = nh.advertiseService("plan_footsteps", &FootstepPlanner::planService, &ivFootstepPlanner);
	}


	FootstepPlannerNode::~FootstepPlannerNode()
	{

	}
}
