//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/network/mtp/entity/ProtoMessage.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/network/mtp/entity/ProtoMessage.h"
#include "im/actor/model/network/mtp/entity/ProtoObject.h"
#include "im/actor/model/util/DataInput.h"
#include "im/actor/model/util/DataOutput.h"
#include "java/io/IOException.h"

@interface MTProtoMessage () {
 @public
  jlong messageId_;
  IOSByteArray *payload_;
}
@end

J2OBJC_FIELD_SETTER(MTProtoMessage, payload_, IOSByteArray *)

@implementation MTProtoMessage

- (instancetype)initWithLong:(jlong)messageId
               withByteArray:(IOSByteArray *)payload {
  if (self = [super init]) {
    self->messageId_ = messageId;
    self->payload_ = payload;
  }
  return self;
}

- (jlong)getMessageId {
  return messageId_;
}

- (IOSByteArray *)getPayload {
  return payload_;
}

- (instancetype)initWithAMDataInput:(AMDataInput *)stream {
  return [super initWithAMDataInput:stream];
}

- (void)writeObjectWithAMDataOutput:(AMDataOutput *)bs {
  [((AMDataOutput *) nil_chk(bs)) writeLongWithLong:messageId_];
  [bs writeProtoBytesWithByteArray:payload_ withInt:0 withInt:((IOSByteArray *) nil_chk(payload_))->size_];
}

- (MTProtoObject *)readObjectWithAMDataInput:(AMDataInput *)bs {
  messageId_ = [((AMDataInput *) nil_chk(bs)) readLong];
  payload_ = [bs readProtoBytes];
  return self;
}

- (NSString *)description {
  return JreStrcat("$JC", @"ProtoMessage [#", messageId_, ']');
}

- (void)copyAllFieldsTo:(MTProtoMessage *)other {
  [super copyAllFieldsTo:other];
  other->messageId_ = messageId_;
  other->payload_ = payload_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithLong:withByteArray:", "ProtoMessage", NULL, 0x1, NULL },
    { "getMessageId", NULL, "J", 0x1, NULL },
    { "getPayload", NULL, "[B", 0x1, NULL },
    { "initWithAMDataInput:", "ProtoMessage", NULL, 0x1, "Ljava.io.IOException;" },
    { "writeObjectWithAMDataOutput:", "writeObject", "V", 0x1, "Ljava.io.IOException;" },
    { "readObjectWithAMDataInput:", "readObject", "Lim.actor.model.network.mtp.entity.ProtoObject;", 0x1, "Ljava.io.IOException;" },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "messageId_", NULL, 0x2, "J", NULL,  },
    { "payload_", NULL, 0x2, "[B", NULL,  },
  };
  static const J2ObjcClassInfo _MTProtoMessage = { 1, "ProtoMessage", "im.actor.model.network.mtp.entity", NULL, 0x1, 7, methods, 2, fields, 0, NULL};
  return &_MTProtoMessage;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(MTProtoMessage)
