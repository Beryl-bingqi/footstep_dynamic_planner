"""autogenerated by genpy from arm_navigation_msgs/OrderedCollisionOperations.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import arm_navigation_msgs.msg

class OrderedCollisionOperations(genpy.Message):
  _md5sum = "f171f973b185d4d0121795080114026a"
  _type = "arm_navigation_msgs/OrderedCollisionOperations"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# A set of collision operations that will be performed in the order they are specified
CollisionOperation[] collision_operations
================================================================================
MSG: arm_navigation_msgs/CollisionOperation
# A definition of a collision operation
# E.g. ("gripper",COLLISION_SET_ALL,ENABLE) will enable collisions 
# between the gripper and all objects in the collision space

string object1
string object2
string COLLISION_SET_ALL="all"
string COLLISION_SET_OBJECTS="objects"
string COLLISION_SET_ATTACHED_OBJECTS="attached"

# The penetration distance to which collisions are allowed. This is 0.0 by default.
float64 penetration_distance

# Flag that determines whether collisions will be enabled or disabled for the pair of objects specified above
int32 operation
int32 DISABLE=0
int32 ENABLE=1

"""
  __slots__ = ['collision_operations']
  _slot_types = ['arm_navigation_msgs/CollisionOperation[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       collision_operations

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(OrderedCollisionOperations, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.collision_operations is None:
        self.collision_operations = []
    else:
      self.collision_operations = []

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
      length = len(self.collision_operations)
      buff.write(_struct_I.pack(length))
      for val1 in self.collision_operations:
        _x = val1.object1
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1.object2
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1
        buff.write(_struct_di.pack(_x.penetration_distance, _x.operation))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.collision_operations is None:
        self.collision_operations = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.collision_operations = []
      for i in range(0, length):
        val1 = arm_navigation_msgs.msg.CollisionOperation()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.object1 = str[start:end].decode('utf-8')
        else:
          val1.object1 = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.object2 = str[start:end].decode('utf-8')
        else:
          val1.object2 = str[start:end]
        _x = val1
        start = end
        end += 12
        (_x.penetration_distance, _x.operation,) = _struct_di.unpack(str[start:end])
        self.collision_operations.append(val1)
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
      length = len(self.collision_operations)
      buff.write(_struct_I.pack(length))
      for val1 in self.collision_operations:
        _x = val1.object1
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1.object2
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1
        buff.write(_struct_di.pack(_x.penetration_distance, _x.operation))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.collision_operations is None:
        self.collision_operations = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.collision_operations = []
      for i in range(0, length):
        val1 = arm_navigation_msgs.msg.CollisionOperation()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.object1 = str[start:end].decode('utf-8')
        else:
          val1.object1 = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.object2 = str[start:end].decode('utf-8')
        else:
          val1.object2 = str[start:end]
        _x = val1
        start = end
        end += 12
        (_x.penetration_distance, _x.operation,) = _struct_di.unpack(str[start:end])
        self.collision_operations.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_di = struct.Struct("<di")
