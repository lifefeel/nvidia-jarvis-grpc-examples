# -*- coding: utf-8 -*-
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: audio.proto
"""Generated protocol buffer code."""
from google.protobuf.internal import enum_type_wrapper
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from google.protobuf import reflection as _reflection
from google.protobuf import symbol_database as _symbol_database
# @@protoc_insertion_point(imports)

_sym_db = _symbol_database.Default()




DESCRIPTOR = _descriptor.FileDescriptor(
  name='audio.proto',
  package='nvidia.jarvis',
  syntax='proto3',
  serialized_options=b'\370\001\001',
  create_key=_descriptor._internal_create_key,
  serialized_pb=b'\n\x0b\x61udio.proto\x12\rnvidia.jarvis*X\n\rAudioEncoding\x12\x18\n\x14\x45NCODING_UNSPECIFIED\x10\x00\x12\x0e\n\nLINEAR_PCM\x10\x01\x12\x08\n\x04\x46LAC\x10\x02\x12\t\n\x05MULAW\x10\x03\x12\x08\n\x04\x41LAW\x10\x14\x42\x03\xf8\x01\x01\x62\x06proto3'
)

_AUDIOENCODING = _descriptor.EnumDescriptor(
  name='AudioEncoding',
  full_name='nvidia.jarvis.AudioEncoding',
  filename=None,
  file=DESCRIPTOR,
  create_key=_descriptor._internal_create_key,
  values=[
    _descriptor.EnumValueDescriptor(
      name='ENCODING_UNSPECIFIED', index=0, number=0,
      serialized_options=None,
      type=None,
      create_key=_descriptor._internal_create_key),
    _descriptor.EnumValueDescriptor(
      name='LINEAR_PCM', index=1, number=1,
      serialized_options=None,
      type=None,
      create_key=_descriptor._internal_create_key),
    _descriptor.EnumValueDescriptor(
      name='FLAC', index=2, number=2,
      serialized_options=None,
      type=None,
      create_key=_descriptor._internal_create_key),
    _descriptor.EnumValueDescriptor(
      name='MULAW', index=3, number=3,
      serialized_options=None,
      type=None,
      create_key=_descriptor._internal_create_key),
    _descriptor.EnumValueDescriptor(
      name='ALAW', index=4, number=20,
      serialized_options=None,
      type=None,
      create_key=_descriptor._internal_create_key),
  ],
  containing_type=None,
  serialized_options=None,
  serialized_start=30,
  serialized_end=118,
)
_sym_db.RegisterEnumDescriptor(_AUDIOENCODING)

AudioEncoding = enum_type_wrapper.EnumTypeWrapper(_AUDIOENCODING)
ENCODING_UNSPECIFIED = 0
LINEAR_PCM = 1
FLAC = 2
MULAW = 3
ALAW = 20


DESCRIPTOR.enum_types_by_name['AudioEncoding'] = _AUDIOENCODING
_sym_db.RegisterFileDescriptor(DESCRIPTOR)


DESCRIPTOR._options = None
# @@protoc_insertion_point(module_scope)
