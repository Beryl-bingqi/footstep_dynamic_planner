/*********************************************************************
 * Software License Agreement (BSD License)
 *
 *  Copyright (c) 2009, Willow Garage, Inc.
 *  All rights reserved.
 *
 *  Redistribution and use in source and binary forms, with or without
 *  modification, are permitted provided that the following conditions
 *  are met:
 *
 *   * Redistributions of source code must retain the above copyright
 *     notice, this list of conditions and the following disclaimer.
 *   * Redistributions in binary form must reproduce the above
 *     copyright notice, this list of conditions and the following
 *     disclaimer in the documentation and/or other materials provided
 *     with the distribution.
 *   * Neither the name of the Willow Garage nor the names of its
 *     contributors may be used to endorse or promote products derived
 *     from this software without specific prior written permission.
 *
 *  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 *  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 *  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 *  FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 *  COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 *  INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 *  BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 *  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 *  CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 *  LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 *  ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 *  POSSIBILITY OF SUCH DAMAGE.
 *********************************************************************/

/** \author Mrinal Kalakrishnan */

#ifndef FRITSCH_BUTLAND_SPLINE_SMOOTHER_H_
#define FRITSCH_BUTLAND_SPLINE_SMOOTHER_H_

#include <spline_smoother/spline_smoother.h>

namespace spline_smoother
{

/**
 * \brief Implements the Fritsch-Butland algorithm for monotonic cubic spline interpolation.
 *
 * Outputs cubic splines with continuous velocities at the waypoints, but not accelerations.
 *
 * Reference: F.N. Fritsch and J. Butland. A method for constructing local monotone piecewise
 * cubic interpolants. SIAM J. Sci. Stst. Comput., 5(2), 1984.
 */
template <typename T>
class FritschButlandSplineSmoother: public SplineSmoother<T>
{
public:
  FritschButlandSplineSmoother();
  virtual ~FritschButlandSplineSmoother();

  virtual bool smooth(const T& trajectory_in, 
                      T& trajectory_out) const;
};

template <typename T>
FritschButlandSplineSmoother<T>::FritschButlandSplineSmoother()
{
}

template <typename T>
FritschButlandSplineSmoother<T>::~FritschButlandSplineSmoother()
{
}

template <typename T>
bool FritschButlandSplineSmoother<T>::smooth(const T& trajectory_in, 
                                          T& trajectory_out) const
{
  bool success = true;

  int size = trajectory_in.request.trajectory.points.size();
  int num_traj = trajectory_in.request.trajectory.joint_names.size();
  trajectory_out = trajectory_in;

  if (!checkTrajectoryConsistency(trajectory_out))
    return false;

  // keep the first and last velocities intact

  // for every point in time:
  for (int i=1; i<size-1; ++i)
  {
    double h1 = (trajectory_in.request.trajectory.points[i].time_from_start - trajectory_in.request.trajectory.points[i-1].time_from_start).toSec();
    double h2 = (trajectory_in.request.trajectory.points[i+1].time_from_start - trajectory_in.request.trajectory.points[i].time_from_start).toSec();

    // for every (joint) trajectory
    for (int j=0; j<num_traj; ++j)
    {
      double s1 = (trajectory_in.request.trajectory.points[i].positions[j] - trajectory_in.request.trajectory.points[i-1].positions[j])/h1;
      double s2 = (trajectory_in.request.trajectory.points[i+1].positions[j] - trajectory_in.request.trajectory.points[i].positions[j])/h2;

      double alpha = (1 + h2/(h1+h2))/3.0;

      double vel = 0.0;
      if (s1*s2 > 0)
      {
        vel = (s1*s2)/(alpha*s2 + (1.0-alpha)*s1);
      }
      trajectory_out.request.trajectory.points[i].velocities[j] = vel;
      trajectory_out.request.trajectory.points[i].accelerations[j] = 0.0;
    }
  }
  return success;
}
}

#endif /* FRITSCH_BUTLAND_SPLINE_SMOOTHER_H_ */
