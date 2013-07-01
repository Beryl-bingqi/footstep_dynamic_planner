// SVN $HeadURL: https://alufr-ros-pkg.googlecode.com/svn/trunk/humanoid_navigation/footstep_planner/include/footstep_planner/FootstepPlannerNode.h $
// SVN $Id: FootstepPlannerNode.h 2105 2011-10-24 13:19:32Z hornunga@informatik.uni-freiburg.de $

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

#ifndef FOOTSTEPPLANNERNODE_H_
#define FOOTSTEPPLANNERNODE_H_


#include <ros/ros.h>

#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/PoseWithCovarianceStamped.h>
#include <footstep_planner/FootstepPlanner.h>


namespace footstep_planner
{
	/**
	 * @brief Wrapper class for FootstepPlanner, providing callbacks for
	 * the node functionality.
	 *
	 */
	class FootstepPlannerNode
	{
    public:
        FootstepPlannerNode();
        virtual ~FootstepPlannerNode();

    protected:
        FootstepPlanner ivFootstepPlanner;

        ros::Subscriber ivGoalPoseSub, ivGridMapSub, ivStartPoseSub, ivRobotPoseSub;
        ros::ServiceServer ivFootstepPlanService;
	};
}
#endif /* FOOTSTEPPLANNERNODE_H_ */
