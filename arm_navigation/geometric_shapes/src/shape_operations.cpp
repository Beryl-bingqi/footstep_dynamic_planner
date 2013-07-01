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

#include "geometric_shapes/shape_operations.h"

#include <cstdio>
#include <cmath>
#include <algorithm>
#include <set>

#include <ros/console.h>
#include <resource_retriever/retriever.h>

#if defined(IS_ASSIMP3)
#include <assimp/scene.h>
#include <assimp/Importer.hpp>
#include <assimp/postprocess.h>
#else
#include <assimp/aiScene.h>
#include <assimp/assimp.hpp>
#include <assimp/aiPostProcess.h>
#endif

namespace shapes
{
  
Shape* cloneShape(const Shape *shape)
{
  Shape *result = NULL;
  if (shape) {
    switch (shape->type)
    {
    case SPHERE:
      result = new Sphere(static_cast<const Sphere*>(shape)->radius);
      break;
    case CYLINDER:
      result = new Cylinder(static_cast<const Cylinder*>(shape)->radius, static_cast<const Cylinder*>(shape)->length);
      break;
    case BOX:
      result = new Box(static_cast<const Box*>(shape)->size[0], static_cast<const Box*>(shape)->size[1], static_cast<const Box*>(shape)->size[2]);
      break;
    case MESH:
      {
        const Mesh *src = static_cast<const Mesh*>(shape);
        Mesh *dest = new Mesh(src->vertexCount, src->triangleCount);
        unsigned int n = 3 * src->vertexCount;
        for (unsigned int i = 0 ; i < n ; ++i)
          dest->vertices[i] = src->vertices[i];
        n = 3 * src->triangleCount;
        for (unsigned int i = 0 ; i < n ; ++i)
        {
          dest->triangles[i] = src->triangles[i];
          dest->normals[i] = src->normals[i];
        }
        result = dest;
      }
      break;
    default:
      break;
    }
  }
  return result;
}

std::vector<Shape*> cloneShapeVector(const std::vector<Shape*>& shapes)
{
  std::vector<Shape*> ret;
  for(unsigned int i = 0; i < shapes.size(); i++) {
    ret.push_back(cloneShape(shapes[i]));
  }
  return ret;
}

void deleteShapeVector(std::vector<Shape*>& shapes) {
  for(unsigned int i = 0; i < shapes.size(); i++) {
    delete shapes[i];
  }
  shapes.clear();
}
    
StaticShape* cloneShape(const StaticShape *shape)
{
  StaticShape *result = NULL;
  if (shape) {
    switch (shape->type)
    {
    case PLANE:
      result = new Plane(static_cast<const Plane*>(shape)->a, static_cast<const Plane*>(shape)->b, 
                         static_cast<const Plane*>(shape)->c, static_cast<const Plane*>(shape)->d);
      break;
    default:
      break;
    }
  }
	
  return result;
}
    
    
namespace detail
{
struct myVertex
{
  tf::Vector3    point;
  unsigned int index;
};
	
struct ltVertexValue
{
  bool operator()(const myVertex &p1, const myVertex &p2) const
  {
    const tf::Vector3 &v1 = p1.point;
    const tf::Vector3 &v2 = p2.point;
    if (v1.getX() < v2.getX())
      return true;
    if (v1.getX() > v2.getX())
      return false;
    if (v1.getY() < v2.getY())
      return true;
    if (v1.getY() > v2.getY())
      return false;
    if (v1.getZ() < v2.getZ())
      return true;
    return false;
  }
};
	
struct ltVertexIndex
{
  bool operator()(const myVertex &p1, const myVertex &p2) const
  {
    return p1.index < p2.index;
  }
};

}
    
shapes::Mesh* createMeshFromVertices(const std::vector<tf::Vector3> &vertices, const std::vector<unsigned int> &triangles)
{
  unsigned int nt = triangles.size() / 3;
  shapes::Mesh *mesh = new shapes::Mesh(vertices.size(), nt);
  for (unsigned int i = 0 ; i < vertices.size() ; ++i)
  {
    mesh->vertices[3 * i    ] = vertices[i].getX();
    mesh->vertices[3 * i + 1] = vertices[i].getY();
    mesh->vertices[3 * i + 2] = vertices[i].getZ();
  }
	
  std::copy(triangles.begin(), triangles.end(), mesh->triangles);
	
  // compute normals 
  for (unsigned int i = 0 ; i < nt ; ++i)
  {
    tf::Vector3 s1 = vertices[triangles[i * 3    ]] - vertices[triangles[i * 3 + 1]];
    tf::Vector3 s2 = vertices[triangles[i * 3 + 1]] - vertices[triangles[i * 3 + 2]];
    tf::Vector3 normal = s1.cross(s2);
    normal.normalize();
    mesh->normals[3 * i    ] = normal.getX();
    mesh->normals[3 * i + 1] = normal.getY();
    mesh->normals[3 * i + 2] = normal.getZ();
  }
  return mesh;
}
    
shapes::Mesh* createMeshFromVertices(const std::vector<tf::Vector3> &source)
{
  if (source.size() < 3)
    return NULL;
	
  std::set<detail::myVertex, detail::ltVertexValue> vertices;
  std::vector<unsigned int>                         triangles;
	
  for (unsigned int i = 0 ; i < source.size() / 3 ; ++i)
  {
    // check if we have new vertices
    detail::myVertex vt;
	    
    vt.point = source[3 * i];
    std::set<detail::myVertex, detail::ltVertexValue>::iterator p1 = vertices.find(vt);
    if (p1 == vertices.end())
    {
      vt.index = vertices.size();
      vertices.insert(vt);		    
    }
    else
      vt.index = p1->index;
    triangles.push_back(vt.index);		
	    
    vt.point = source[3 * i + 1];
    std::set<detail::myVertex, detail::ltVertexValue>::iterator p2 = vertices.find(vt);
    if (p2 == vertices.end())
    {
      vt.index = vertices.size();
      vertices.insert(vt);		    
    }
    else
      vt.index = p2->index;
    triangles.push_back(vt.index);		
	    
    vt.point = source[3 * i + 2];
    std::set<detail::myVertex, detail::ltVertexValue>::iterator p3 = vertices.find(vt);
    if (p3 == vertices.end())
    {
      vt.index = vertices.size();
      vertices.insert(vt);		    
    }
    else
      vt.index = p3->index;

    triangles.push_back(vt.index);
  }
	
  // sort our vertices
  std::vector<detail::myVertex> vt;
  vt.insert(vt.begin(), vertices.begin(), vertices.end());
  std::sort(vt.begin(), vt.end(), detail::ltVertexIndex());
	
  // copy the data to a mesh structure 
  unsigned int nt = triangles.size() / 3;
	
  shapes::Mesh *mesh = new shapes::Mesh(vt.size(), nt);
  for (unsigned int i = 0 ; i < vt.size() ; ++i)
  {
    mesh->vertices[3 * i    ] = vt[i].point.getX();
    mesh->vertices[3 * i + 1] = vt[i].point.getY();
    mesh->vertices[3 * i + 2] = vt[i].point.getZ();
  }
	
  std::copy(triangles.begin(), triangles.end(), mesh->triangles);
	
  // compute normals 
  for (unsigned int i = 0 ; i < nt ; ++i)
  {
    tf::Vector3 s1 = vt[triangles[i * 3    ]].point - vt[triangles[i * 3 + 1]].point;
    tf::Vector3 s2 = vt[triangles[i * 3 + 1]].point - vt[triangles[i * 3 + 2]].point;
    tf::Vector3 normal = s1.cross(s2);
    normal.normalize();
    mesh->normals[3 * i    ] = normal.getX();
    mesh->normals[3 * i + 1] = normal.getY();
    mesh->normals[3 * i + 2] = normal.getZ();
  }
	
  return mesh;
}

shapes::Mesh* createMeshFromFilename(const std::string& filename, const tf::Vector3* scale) {
  resource_retriever::Retriever retriever;
  resource_retriever::MemoryResource res;
  try {
    res = retriever.get(filename);
  } catch (resource_retriever::Exception& e) {
    ROS_ERROR("%s", e.what());
    return NULL;
  }
	
  if (res.size == 0) {
    ROS_WARN("Retrieved empty mesh for resource '%s'", filename.c_str());
    return NULL;
  } 
  
  // Create an instance of the Importer class
  Assimp::Importer importer;

  // try to get a file extension
  std::string hint;
  std::size_t pos = filename.find_last_of(".");
  if (pos != std::string::npos)
  {
    hint = filename.substr(pos + 1);
    
    // temp hack until everything is stl not stlb
    if (hint.find("stl") != std::string::npos)
      hint = "stl";
  }
    
  // And have it read the given file with some postprocessing
  const aiScene* scene = importer.ReadFileFromMemory(reinterpret_cast<void*>(res.data.get()), res.size,
                                                     aiProcess_Triangulate            |
                                                     aiProcess_JoinIdenticalVertices  |
                                                     aiProcess_SortByPType, hint.c_str());
  if(!scene) {
    ROS_WARN_STREAM("Assimp reports no scene in " << filename);
    return NULL;
  }
  if(!scene->HasMeshes()) {
    ROS_WARN_STREAM("Assimp reports scene in " << filename << " has no meshes");
    return NULL;
  }
  if(scene->mNumMeshes > 1) {
    ROS_WARN_STREAM("Mesh loaded from " << filename << " has " << scene->mNumMeshes << " but only the first one will be used");
  }
        
  aiNode *node = scene->mRootNode;

  bool found = false;
  if(node->mNumMeshes > 0 && node->mMeshes != NULL) {
    ROS_DEBUG_STREAM("Root node has meshes " << node->mMeshes);
    found = true;
  } else {
    for (uint32_t i=0; i < node->mNumChildren; ++i) {
      if(node->mChildren[i]->mNumMeshes > 0 && node->mChildren[i]->mMeshes != NULL) {
        ROS_DEBUG_STREAM("Child " << i << " has meshes");
        node = node->mChildren[i];
        found = true;
        break;
      }
    }
  }
  if(found == false) {
    ROS_WARN_STREAM("Can't find meshes in file");
    return NULL;
  }
  aiMatrix4x4 transform = node->mTransformation;
  tf::Vector3 ts(1.0, 1.0, 1.0);
  if(scale != NULL) {
    ts = (*scale);
  }
  return(shapes::createMeshFromAsset(scene->mMeshes[node->mMeshes[0]], transform, ts));
}

shapes::Mesh* createMeshFromAsset(const aiMesh* a, const aiMatrix4x4& transform, const tf::Vector3& scale)
{
  if (!a->HasFaces())
  {
    ROS_ERROR("Mesh asset has no faces");
    return NULL;
  }
	
  if (!a->HasPositions())
  {
    ROS_ERROR("Mesh asset has no positions");
    return NULL;
  }
	
  for (unsigned int i = 0 ; i < a->mNumFaces ; ++i)
    if (a->mFaces[i].mNumIndices != 3)
    {
      ROS_ERROR("Asset is not a triangle mesh");
      return NULL;
    }
	
	
  shapes::Mesh *mesh = new shapes::Mesh(a->mNumVertices, a->mNumFaces);

  // copy vertices
  for (unsigned int i = 0 ; i < a->mNumVertices ; ++i)
  {
    aiVector3D p;
    p.x = a->mVertices[i].x;
    p.y = a->mVertices[i].y;
    p.z = a->mVertices[i].z;
    p *= transform;
    mesh->vertices[3 * i    ] = p.x*scale.x();
    mesh->vertices[3 * i + 1] = p.y*scale.y();
    mesh->vertices[3 * i + 2] = p.z*scale.z();
  }
	
  // copy triangles
  for (unsigned int i = 0 ; i < a->mNumFaces ; ++i)
  {
    mesh->triangles[3 * i    ] = a->mFaces[i].mIndices[0];
    mesh->triangles[3 * i + 1] = a->mFaces[i].mIndices[1];
    mesh->triangles[3 * i + 2] = a->mFaces[i].mIndices[2];
  }
	
  // compute normals
  for (unsigned int i = 0 ; i < a->mNumFaces ; ++i)
  {
    aiVector3D f1 = a->mVertices[a->mFaces[i].mIndices[0]];
    f1.x *= scale.x();
    f1.y *= scale.y();
    f1.z *= scale.z();
    aiVector3D f2 = a->mVertices[a->mFaces[i].mIndices[1]];
    f2.x *= scale.x();
    f2.y *= scale.y();
    f2.z *= scale.z();          
    aiVector3D f3 = a->mVertices[a->mFaces[i].mIndices[2]];
    f3.x *= scale.x();
    f3.y *= scale.y();
    f3.z *= scale.z();          
    aiVector3D as1 = f1-f2;
    aiVector3D as2 = f2-f3;
    tf::Vector3   s1(as1.x, as1.y, as1.z);
    tf::Vector3   s2(as2.x, as2.y, as2.z);
    tf::Vector3 normal = s1.cross(s2);
    normal.normalize();
    mesh->normals[3 * i    ] = normal.getX();
    mesh->normals[3 * i + 1] = normal.getY();
    mesh->normals[3 * i + 2] = normal.getZ();
  }
	
  return mesh;
}

}
