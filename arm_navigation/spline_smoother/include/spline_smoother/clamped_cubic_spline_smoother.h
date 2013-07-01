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

#ifndef CLAMPED_CUBIC_SPLINE_SMOOTHER_H_
#define CLAMPED_CUBIC_SPLINE_SMOOTHER_H_

#include "spline_smoother.h"
#include "numerical_differentiation_spline_smoother.h"
#include <spline_smoother/spline_smoother_utils.h>

namespace spline_smoother
{

/**
 * \brief Generates a clamped cubic spline trajectory from the input waypoints.
 *
 * This spline smoother forms cubic spline segments between way-points. The velocities
 * at the way-points are generated by constraining accelerations of adjoining sections to
 * be equal, constraining start and end velocities to be equal to zero, then solving the resulting
 * linear system of equations.
 *
 * Processing time is O(N), but this method appears to be numerically unstable for long trajectories
 * (N>20)
 */
template <typename T>
class ClampedCubicSplineSmoother: public SplineSmoother<T>
{
public:
  ClampedCubicSplineSmoother();
  virtual ~ClampedCubicSplineSmoother();

  static const int MAX_TRIDIAGONAL_SOLVER_ELEMENTS = 20;

  /**
   * \brief Smooths the input position trajectory by generating velocities and accelerations at the waypoints.
   *
   * \return true if successful, false if not
   */
  virtual bool smooth(const T& trajectory_in, 
                      T& trajectory_out) const;

private:
  NumericalDifferentiationSplineSmoother<T> num_diff_spline_smoother_;
  bool smoothSegment(std::vector<trajectory_msgs::JointTrajectoryPoint>& waypoints) const;

};


template <typename T>
ClampedCubicSplineSmoother<T>::ClampedCubicSplineSmoother()
{
}

template <typename T>
ClampedCubicSplineSmoother<T>::~ClampedCubicSplineSmoother()
{
}

template <typename T>
bool ClampedCubicSplineSmoother<T>::smooth(const T& trajectory_in, T& trajectory_out) const
{
  int length = trajectory_in.request.trajectory.points.size();
  trajectory_out = trajectory_in;

  if (!checkTrajectoryConsistency(trajectory_out))
    return false;

  if (length<3)
    return true;

  if (length <= MAX_TRIDIAGONAL_SOLVER_ELEMENTS)
  {
    smoothSegment(trajectory_out.request.trajectory.points);
  }
  else
  {
    ROS_ERROR("ClampedCubicSplineSmoother: does not support trajectory lengths > %d due to numerical instability.", MAX_TRIDIAGONAL_SOLVER_ELEMENTS);
    return false;
  }

  return true;
}

template <typename T>
bool ClampedCubicSplineSmoother<T>::smoothSegment(std::vector<trajectory_msgs::JointTrajectoryPoint>& wpts) const
{
  int length = wpts.size();
  int num_joints = wpts[0].positions.size();
  if (length < 3)
    return true;

  std::vector<double> intervals(length-1);

  // generate time intervals:
  for (int i=0; i<length-1; i++)
    intervals[i] = (wpts[i+1].time_from_start - wpts[i].time_from_start).toSec();

  // arrays for tridiagonal matrix
  std::vector<double> a(length-2);
  std::vector<double> b(length-2);
  std::vector<double> c(length-2);
  std::vector<double> d(length-2);
  std::vector<double> x(length-2);

  // for each joint:
  for (int j=0; j<num_joints; j++)
  {
    a[0] = 0.0;
    c[length-3] = 0.0;
    for (int i=0; i<length-2; i++)
    {
      c[i] = intervals[i];
      if (i<length-3)
        a[i+1] = intervals[i+2];
      b[i] = 2.0*(intervals[i] + intervals[i+1]);
      d[i] = (3.0/(intervals[i]*intervals[i+1]))*
          ((intervals[i]*intervals[i])*(wpts[i+2].positions[j]-wpts[i+1].positions[j]) +
              (intervals[i+1]*intervals[i+1])*(wpts[i+1].positions[j]-wpts[i].positions[j]));
    }
    d[0] -= wpts[0].velocities[j]*intervals[1];
    d[length-3] -= wpts[length-1].velocities[j]*intervals[length-3];

    tridiagonalSolve(a, b, c, d, x);
    for (int i=0; i<length-2; i++)
      wpts[i+1].velocities[j] = x[i];
  }
  return true;
}


}

#endif /* CLAMPED_CUBIC_SPLINE_SMOOTHER_H_ */