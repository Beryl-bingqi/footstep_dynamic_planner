"""autogenerated by genpy from spline_smoother/LSPBTrajectorySegmentMsg.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import genpy
import spline_smoother.msg

class LSPBTrajectorySegmentMsg(genpy.Message):
  _md5sum = "53054857ee1d2a19ca83edc07b14eef2"
  _type = "spline_smoother/LSPBTrajectorySegmentMsg"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """duration duration
LSPBSplineCoefficients[] joints

================================================================================
MSG: spline_smoother/LSPBSplineCoefficients
float64[] coefficients
float64 linear_segment_duration
float64 quadratic_segment_duration
"""
  __slots__ = ['duration','joints']
  _slot_types = ['duration','spline_smoother/LSPBSplineCoefficients[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       duration,joints

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(LSPBTrajectorySegmentMsg, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.duration is None:
        self.duration = genpy.Duration()
      if self.joints is None:
        self.joints = []
    else:
      self.duration = genpy.Duration()
      self.joints = []

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
      _x = self
      buff.write(_struct_2i.pack(_x.duration.secs, _x.duration.nsecs))
      length = len(self.joints)
      buff.write(_struct_I.pack(length))
      for val1 in self.joints:
        length = len(val1.coefficients)
        buff.write(_struct_I.pack(length))
        pattern = '<%sd'%length
        buff.write(struct.pack(pattern, *val1.coefficients))
        _x = val1
        buff.write(_struct_2d.pack(_x.linear_segment_duration, _x.quadratic_segment_duration))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.duration is None:
        self.duration = genpy.Duration()
      if self.joints is None:
        self.joints = None
      end = 0
      _x = self
      start = end
      end += 8
      (_x.duration.secs, _x.duration.nsecs,) = _struct_2i.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.joints = []
      for i in range(0, length):
        val1 = spline_smoother.msg.LSPBSplineCoefficients()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sd'%length
        start = end
        end += struct.calcsize(pattern)
        val1.coefficients = struct.unpack(pattern, str[start:end])
        _x = val1
        start = end
        end += 16
        (_x.linear_segment_duration, _x.quadratic_segment_duration,) = _struct_2d.unpack(str[start:end])
        self.joints.append(val1)
      self.duration.canon()
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
      _x = self
      buff.write(_struct_2i.pack(_x.duration.secs, _x.duration.nsecs))
      length = len(self.joints)
      buff.write(_struct_I.pack(length))
      for val1 in self.joints:
        length = len(val1.coefficients)
        buff.write(_struct_I.pack(length))
        pattern = '<%sd'%length
        buff.write(val1.coefficients.tostring())
        _x = val1
        buff.write(_struct_2d.pack(_x.linear_segment_duration, _x.quadratic_segment_duration))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.duration is None:
        self.duration = genpy.Duration()
      if self.joints is None:
        self.joints = None
      end = 0
      _x = self
      start = end
      end += 8
      (_x.duration.secs, _x.duration.nsecs,) = _struct_2i.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.joints = []
      for i in range(0, length):
        val1 = spline_smoother.msg.LSPBSplineCoefficients()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sd'%length
        start = end
        end += struct.calcsize(pattern)
        val1.coefficients = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
        _x = val1
        start = end
        end += 16
        (_x.linear_segment_duration, _x.quadratic_segment_duration,) = _struct_2d.unpack(str[start:end])
        self.joints.append(val1)
      self.duration.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_2d = struct.Struct("<2d")
_struct_2i = struct.Struct("<2i")