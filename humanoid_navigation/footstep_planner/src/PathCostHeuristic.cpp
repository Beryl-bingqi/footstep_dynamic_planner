// SVN $HeadURL: https://alufr-ros-pkg.googlecode.com/svn/trunk/humanoid_navigation/footstep_planner/src/PathCostHeuristic.cpp $
// SVN $Id: PathCostHeuristic.cpp 2206 2011-11-22 19:08:56Z garimort.johannes $

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

#include <footstep_planner/PathCostHeuristic.h>


namespace footstep_planner
{
    PathCostHeuristic::PathCostHeuristic(double cell_size,
                                         int    num_angle_bins,
	                                     double step_cost,
                                         double diff_angle_cost,
	                                     double max_step_width)
        : Heuristic(cell_size, num_angle_bins, PATH_COST),
          ivpGrid(NULL),
          ivGoal(NULL),
          ivStepCost(step_cost),
          ivDiffAngleCost(diff_angle_cost),
          ivMaxStepWidth(max_step_width)
    {};


    PathCostHeuristic::~PathCostHeuristic()
    {
        if (ivpGrid)
            resetGrid();
    }


    double
    PathCostHeuristic::getHValue(const PlanningState& from,
	                             const PlanningState& to)
    const
    {
        if (from == to)
            return 0;

        unsigned int from_x;
        unsigned int from_y;
        // could be removed after more testing (then use ...noBounds... again)
        bool valid = ivMapPtr->worldToMap(disc_2_cont(from.getX(), ivCellSize),
                                     disc_2_cont(from.getY(), ivCellSize),
                                     from_x, from_y);
        assert(valid);
        double dist = double(ivGridSearchPtr->getlowerboundoncostfromstart_inmm(from_x, from_y)) / 1000;
        double expected_steps = dist / ivMaxStepWidth;
        // we could replace this by working on ints (w. all normalization)
        // int disc_diff_angle = abs(from.getTheta() - to.getTheta());
        // double diff_angle = angle_disc_2_cont(disc_diff_angle, ivNumAngleBins);
        double diff_angle = 0.0;
        if (ivDiffAngleCost > 0.0)
        {
        	diff_angle = std::abs(angles::shortest_angular_distance(
        	        angle_disc_2_cont(from.getTheta(), ivNumAngleBins),
        	        angle_disc_2_cont(to.getTheta(), ivNumAngleBins)));
        }

        return (dist + expected_steps*ivStepCost + diff_angle*ivDiffAngleCost);
    }


    bool
    PathCostHeuristic::calculateDistances(const PlanningState& start,
                                          const PlanningState& goal)
    {
        assert(ivMapPtr);

        if (ivGoal)
        {
            delete ivGoal;
            ivGoal = NULL;
        }
        ivGoal = new PlanningState(goal);

        unsigned int start_x;
        unsigned int start_y;
        bool valid = ivMapPtr->worldToMap(disc_2_cont(start.getX(), ivCellSize),
                                          disc_2_cont(start.getY(), ivCellSize),
                                          start_x, start_y);
        assert(valid);
        unsigned int goal_x;
        unsigned int goal_y;
        valid = ivMapPtr->worldToMap(disc_2_cont(goal.getX(), ivCellSize),
		                             disc_2_cont(goal.getY(), ivCellSize),
		                             goal_x, goal_y);
        assert(valid);

        ivGridSearchPtr->search(ivpGrid, cvObstacleThreshold, goal_x, goal_y,
                                start_x, start_y,
                                SBPL_2DGRIDSEARCH_TERM_CONDITION_ALLCELLS);

        return true;
    }


    void
    PathCostHeuristic::setMap(const boost::shared_ptr<GridMap2D> map)
    {
ROS_ERROR("PathCostHeristic::setMap: ");
        ivMapPtr.reset();
        ivMapPtr = map;

        CvSize size = map->size();

        if (ivGridSearchPtr)
            ivGridSearchPtr->destroy();
        ivGridSearchPtr.reset(new SBPL2DGridSearch(size.width, size.height,
                                                   ivMapPtr->getResolution()));

        if (ivpGrid)
            resetGrid();
        ivpGrid = new unsigned char* [size.width];
        for (int x = 0; x < size.width; ++x)
        {
            ivpGrid[x] = new unsigned char [size.height];
        }
        for (int y = 0; y < size.height; ++y)
        {
            for (int x = 0; x < size.width; ++x)
            {
                if (ivMapPtr->isOccupiedAtCell(x, y))
                    ivpGrid[x][y] = 255;
                else
                    ivpGrid[x][y] = 0;
            }
        }
    }


    void
    PathCostHeuristic::resetGrid()
    {
        CvSize size = ivMapPtr->size();
        for (int x = 0; x < size.width; ++x)
        {
            if (ivpGrid[x])
            {
                delete[] ivpGrid[x];
                ivpGrid[x] = NULL;
            }
        }
        delete[] ivpGrid;
        ivpGrid = NULL;
    }
} // end of namespace
