// SVN $HeadURL: https://alufr-ros-pkg.googlecode.com/svn/trunk/humanoid_navigation/footstep_planner/include/footstep_planner/Heuristic.h $
// SVN $Id: Heuristic.h 2158 2011-11-09 19:33:34Z garimort.johannes $

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

#ifndef HUMANOID_SBPL_HEURISTIC_H
#define HUMANOID_SBPL_HEURISTIC_H

#include <footstep_planner/helper.h>
#include <footstep_planner/PlanningState.h>


namespace footstep_planner
{
	/**
	 * @brief An abstract super class providing methods necessary to be used as
	 * heuristic function within Dstar.
	 */
	class Heuristic
	{
	public:
		enum HeuristicType { EUCLIDEAN=0, EUCLIDEAN_STEPCOST=1, PATH_COST=2 };

		Heuristic(double cell_size, int num_angle_bins, HeuristicType type);
		virtual ~Heuristic();

		/**
		 * @return The heuristically determined path costs to get from
		 * state 'from' to state 'to' where 'to' is supposed to be the goal of
		 * the planning task. Costs are in meter.
		 */
		virtual double getHValue(const PlanningState& from, const PlanningState& to) const = 0;

		HeuristicType getHeuristicType() const { return ivHeuristicType; };

	protected:
		double ivCellSize;
		int    ivNumAngleBins;

		const HeuristicType ivHeuristicType;
	};


	/**
	 * @brief Determining the heuristic value by the euclidean distance between
	 * two states.
	 */
	class EuclideanHeuristic : public Heuristic
	{
	public:
		EuclideanHeuristic(double cell_size, int num_angle_bins);
		virtual ~EuclideanHeuristic();

		virtual double getHValue(const PlanningState& from, const PlanningState& to) const;
	};


	/**
	 * @brief Determining the heuristic value by the euclidean distance between
	 * two states and the costs of the expected step costs to get from one of the
	 * states to the other.
	 */
	class EuclStepCostHeuristic : public Heuristic
	{

	public:
		EuclStepCostHeuristic(double cell_size, int num_angle_bins,
                              double step_cost, double diff_angle_cost,
                              double max_step_width);
		virtual ~EuclStepCostHeuristic();

		virtual double getHValue(const PlanningState& from, const PlanningState& to) const;

	private:
		const double ivStepCost;
		const double ivDiffAngleCost;
		const double ivMaxStepWidth; /// longest step width
	};
}
#endif /* HUMANOID_SBPL_HEURISTIC_H */
