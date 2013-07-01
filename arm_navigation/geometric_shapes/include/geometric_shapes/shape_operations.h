/*********************************************************************
 * Software License Agreement (BSD License)
 * 
 *  Copyright (c) 2008, Willow Garage, Inc.
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

/** \author Ioan Sucan */

#ifndef GEOMETRIC_SHAPES_SHAPE_OPERATIONS_
#define GEOMETRIC_SHAPES_SHAPE_OPERATIONS_

#include "geometric_shapes/shapes.h"

#include <vector>
#include <tf/LinearMath/Vector3.h>

#if defined(IS_ASSIMP3)
#include <assimp/mesh.h>
#else
#include <assimp/aiMesh.h>
#endif

namespace shapes
{

/** \brief Load a mesh from a set of vertices. Triangles are
    constructed using index values from the triangles
    vector. Triangle k has vertices at index values triangles[3k],
    triangles[3k+1], triangles[3k+2]  */
Mesh* createMeshFromVertices(const std::vector<tf::Vector3> &vertices, const std::vector<unsigned int> &triangles);
    
/** \brief Load a mesh from a set of vertices. Every 3 vertices
    are considered a triangle. Repeating vertices are identified
    and the set of triangle indices is constructed. The normal at
    each triangle is also computed */
Mesh* createMeshFromVertices(const std::vector<tf::Vector3> &source);

/** \brief Load a mesh from a file that contains a mesh that can be loaded by assimp */
Mesh* createMeshFromFilename(const std::string& filename, const tf::Vector3* scale = NULL);
    
/** \brief Load a mesh from an assimp datastructure */
Mesh* createMeshFromAsset(const aiMesh* a, const aiMatrix4x4& transform, const tf::Vector3& scale);
    
/** \brief Create a copy of a shape */
Shape* cloneShape(const Shape *shape);

/** \brief Create a copy of a static shape */
StaticShape* cloneShape(const StaticShape *shape);

/** \brief Create a copy of a vector of shape */
std::vector<Shape*> cloneShapeVector(const std::vector<Shape*>& shapes);

void deleteShapeVector(std::vector<Shape*>& shapes);

}

#endif
