"""autogenerated by genpy from kinematics_msgs/GetKinematicSolverInfoRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class GetKinematicSolverInfoRequest(genpy.Message):
  _md5sum = "d41d8cd98f00b204e9800998ecf8427e"
  _type = "kinematics_msgs/GetKinematicSolverInfoRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """

"""
  __slots__ = []
  _slot_types = []

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GetKinematicSolverInfoRequest, self).__init__(*args, **kwds)

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      pass
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      pass
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
"""autogenerated by genpy from kinematics_msgs/GetKinematicSolverInfoResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import arm_navigation_msgs.msg
import kinematics_msgs.msg

class GetKinematicSolverInfoResponse(genpy.Message):
  _md5sum = "9b591d98efeb66095c1b33a70221cab5"
  _type = "kinematics_msgs/GetKinematicSolverInfoResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """kinematics_msgs/KinematicSolverInfo kinematic_solver_info

================================================================================
MSG: kinematics_msgs/KinematicSolverInfo
# A list of joints in the kinematic tree
string[] joint_names
# A list of joint limits corresponding to the joint names
arm_navigation_msgs/JointLimits[] limits
# A list of links that the kinematics node provides solutions for
string[] link_names

================================================================================
MSG: arm_navigation_msgs/JointLimits
# This message contains information about limits of a particular joint (or control dimension)
string joint_name

# true if the joint has position limits
bool has_position_limits

# min and max position limits
float64 min_position
float64 max_position

# true if joint has velocity limits
bool has_velocity_limits

# max velocity limit
float64 max_velocity
# min_velocity is assumed to be -max_velocity

# true if joint has acceleration limits
bool has_acceleration_limits
# max acceleration limit
float64 max_acceleration
# min_acceleration is assumed to be -max_acceleration

"""
  __slots__ = ['kinematic_solver_info']
  _slot_types = ['kinematics_msgs/KinematicSolverInfo']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       kinematic_solver_info

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GetKinematicSolverInfoResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.kinematic_solver_info is None:
        self.kinematic_solver_info = kinematics_msgs.msg.KinematicSolverInfo()
    else:
      self.kinematic_solver_info = kinematics_msgs.msg.KinematicSolverInfo()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      length = len(self.kinematic_solver_info.joint_names)
      buff.write(_struct_I.pack(length))
      for val1 in self.kinematic_solver_info.joint_names:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.pack('<I%ss'%length, length, val1))
      length = len(self.kinematic_solver_info.limits)
      buff.write(_struct_I.pack(length))
      for val1 in self.kinematic_solver_info.limits:
        _x = val1.joint_name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1
        buff.write(_struct_B2dBdBd.pack(_x.has_position_limits, _x.min_position, _x.max_position, _x.has_velocity_limits, _x.max_velocity, _x.has_acceleration_limits, _x.max_acceleration))
      length = len(self.kinematic_solver_info.link_names)
      buff.write(_struct_I.pack(length))
      for val1 in self.kinematic_solver_info.link_names:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.pack('<I%ss'%length, length, val1))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.kinematic_solver_info is None:
        self.kinematic_solver_info = kinematics_msgs.msg.KinematicSolverInfo()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.kinematic_solver_info.joint_names = []
      for i in range(0, length):
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1 = str[start:end].decode('utf-8')
        else:
          val1 = str[start:end]
        self.kinematic_solver_info.joint_names.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.kinematic_solver_info.limits = []
      for i in range(0, length):
        val1 = arm_navigation_msgs.msg.JointLimits()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.joint_name = str[start:end].decode('utf-8')
        else:
          val1.joint_name = str[start:end]
        _x = val1
        start = end
        end += 35
        (_x.has_position_limits, _x.min_position, _x.max_position, _x.has_velocity_limits, _x.max_velocity, _x.has_acceleration_limits, _x.max_acceleration,) = _struct_B2dBdBd.unpack(str[start:end])
        val1.has_position_limits = bool(val1.has_position_limits)
        val1.has_velocity_limits = bool(val1.has_velocity_limits)
        val1.has_acceleration_limits = bool(val1.has_acceleration_limits)
        self.kinematic_solver_info.limits.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.kinematic_solver_info.link_names = []
      for i in range(0, length):
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1 = str[start:end].decode('utf-8')
        else:
          val1 = str[start:end]
        self.kinematic_solver_info.link_names.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      length = len(self.kinematic_solver_info.joint_names)
      buff.write(_struct_I.pack(length))
      for val1 in self.kinematic_solver_info.joint_names:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.pack('<I%ss'%length, length, val1))
      length = len(self.kinematic_solver_info.limits)
      buff.write(_struct_I.pack(length))
      for val1 in self.kinematic_solver_info.limits:
        _x = val1.joint_name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1
        buff.write(_struct_B2dBdBd.pack(_x.has_position_limits, _x.min_position, _x.max_position, _x.has_velocity_limits, _x.max_velocity, _x.has_acceleration_limits, _x.max_acceleration))
      length = len(self.kinematic_solver_info.link_names)
      buff.write(_struct_I.pack(length))
      for val1 in self.kinematic_solver_info.link_names:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.pack('<I%ss'%length, length, val1))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.kinematic_solver_info is None:
        self.kinematic_solver_info = kinematics_msgs.msg.KinematicSolverInfo()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.kinematic_solver_info.joint_names = []
      for i in range(0, length):
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1 = str[start:end].decode('utf-8')
        else:
          val1 = str[start:end]
        self.kinematic_solver_info.joint_names.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.kinematic_solver_info.limits = []
      for i in range(0, length):
        val1 = arm_navigation_msgs.msg.JointLimits()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.joint_name = str[start:end].decode('utf-8')
        else:
          val1.joint_name = str[start:end]
        _x = val1
        start = end
        end += 35
        (_x.has_position_limits, _x.min_position, _x.max_position, _x.has_velocity_limits, _x.max_velocity, _x.has_acceleration_limits, _x.max_acceleration,) = _struct_B2dBdBd.unpack(str[start:end])
        val1.has_position_limits = bool(val1.has_position_limits)
        val1.has_velocity_limits = bool(val1.has_velocity_limits)
        val1.has_acceleration_limits = bool(val1.has_acceleration_limits)
        self.kinematic_solver_info.limits.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.kinematic_solver_info.link_names = []
      for i in range(0, length):
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1 = str[start:end].decode('utf-8')
        else:
          val1 = str[start:end]
        self.kinematic_solver_info.link_names.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_B2dBdBd = struct.Struct("<B2dBdBd")
class GetKinematicSolverInfo(object):
  _type          = 'kinematics_msgs/GetKinematicSolverInfo'
  _md5sum = '9b591d98efeb66095c1b33a70221cab5'
  _request_class  = GetKinematicSolverInfoRequest
  _response_class = GetKinematicSolverInfoResponse