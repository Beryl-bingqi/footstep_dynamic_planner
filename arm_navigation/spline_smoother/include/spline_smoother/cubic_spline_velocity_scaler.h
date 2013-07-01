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

/** \author Sachin Chitta */

#ifndef CUBIC_SPLINE_VELOCITY_SCALER_H_
#define CUBIC_SPLINE_VELOCITY_SCALER_H_

#include <spline_smoother/spline_smoother.h>
#include <spline_smoother/cubic_trajectory.h>
namespace spline_smoother
{

/**
 * \brief Scales the time intervals stretching them if necessary so that the trajectory conforms to velocity limits
 */
  template <typename T>
  class CubicSplineVelocityScaler: public SplineSmoother<T>
  {
    public:
    CubicSplineVelocityScaler();
    virtual ~CubicSplineVelocityScaler();

    virtual bool smooth(const T& trajectory_in, 
                        T& trajectory_out) const;
  };

  template <typename T>
  CubicSplineVelocityScaler<T>::CubicSplineVelocityScaler()
  {
  }

  template <typename T>
  CubicSplineVelocityScaler<T>::~CubicSplineVelocityScaler()
  {
  }

  template <typename T>
  bool CubicSplineVelocityScaler<T>::smooth(const T& trajectory_in, T& trajectory_out) const
  {
    spline_smoother::CubicTrajectory traj;
    spline_smoother::SplineTrajectory spline;
    T trajectory_local = trajectory_in;
    if (!checkTrajectoryConsistency(trajectory_local))
      return false;
    bool success = traj.parameterize(trajectory_local.request.trajectory,trajectory_local.request.limits,spline);
    if(!success)
      return false;

    trajectory_out = trajectory_local;

    double dT = 0.01;
    std::set<double> times;
    double total_time;
    spline_smoother::getTotalTime(spline,total_time);
    for(int i=1; i< (int) (total_time/dT); i++)
      times.insert(i*dT);
    times.insert(total_time);

    double insert_time = 0;
    for(unsigned int i=0; i < spline.segments.size(); i++)
    {
      insert_time += spline.segments[i].duration.toSec();
      times.insert(insert_time);
    }

    std::vector<double> times_vec;
    for(std::set<double>::iterator set_iter = times.begin(); set_iter != times.end(); set_iter++)
    {
      times_vec.push_back(*set_iter);
    }
    std::sort(times_vec.begin(), times_vec.end());
    //traj_gen->write(spline,times_vec,"shortcutter_robot.txt");    
    //traj_gen->sample(spline,times,trajectory_out.trajectory);

    if(!spline_smoother::sampleSplineTrajectory(spline,times_vec,trajectory_out.request.trajectory))
      return false;

    return true;
  }
}

#endif /* CUBIC_SPLINE_SMOOTHER_H_ */
