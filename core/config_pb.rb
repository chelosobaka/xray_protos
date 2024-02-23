# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: core/config.proto

require 'google/protobuf'

require_relative '../common/serial/typed_message_pb'
require_relative '../transport/global/config_pb'


descriptor_data = "\n\x11\x63ore/config.proto\x12\txray.core\x1a!common/serial/typed_message.proto\x1a\x1dtransport/global/config.proto\"\x87\x02\n\x06\x43onfig\x12\x30\n\x07inbound\x18\x01 \x03(\x0b\x32\x1f.xray.core.InboundHandlerConfig\x12\x32\n\x08outbound\x18\x02 \x03(\x0b\x32 .xray.core.OutboundHandlerConfig\x12-\n\x03\x61pp\x18\x04 \x03(\x0b\x32 .xray.common.serial.TypedMessage\x12-\n\ttransport\x18\x05 \x01(\x0b\x32\x16.xray.transport.ConfigB\x02\x18\x01\x12\x33\n\textension\x18\x06 \x03(\x0b\x32 .xray.common.serial.TypedMessageJ\x04\x08\x03\x10\x04\"\x9a\x01\n\x14InboundHandlerConfig\x12\x0b\n\x03tag\x18\x01 \x01(\t\x12;\n\x11receiver_settings\x18\x02 \x01(\x0b\x32 .xray.common.serial.TypedMessage\x12\x38\n\x0eproxy_settings\x18\x03 \x01(\x0b\x32 .xray.common.serial.TypedMessage\"\xba\x01\n\x15OutboundHandlerConfig\x12\x0b\n\x03tag\x18\x01 \x01(\t\x12\x39\n\x0fsender_settings\x18\x02 \x01(\x0b\x32 .xray.common.serial.TypedMessage\x12\x38\n\x0eproxy_settings\x18\x03 \x01(\x0b\x32 .xray.common.serial.TypedMessage\x12\x0e\n\x06\x65xpire\x18\x04 \x01(\x03\x12\x0f\n\x07\x63omment\x18\x05 \x01(\tB=\n\rcom.xray.coreP\x01Z\x1egithub.com/xtls/xray-core/core\xaa\x02\tXray.Coreb\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["xray.common.serial.TypedMessage", "common/serial/typed_message.proto"],
    ["xray.transport.Config", "transport/global/config.proto"],
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Xray
  module Core
    Config = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("xray.core.Config").msgclass
    InboundHandlerConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("xray.core.InboundHandlerConfig").msgclass
    OutboundHandlerConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("xray.core.OutboundHandlerConfig").msgclass
  end
end
