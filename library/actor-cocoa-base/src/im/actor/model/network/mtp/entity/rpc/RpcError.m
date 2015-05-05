//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/network/mtp/entity/rpc/RpcError.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/network/mtp/entity/rpc/RpcError.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/bser/DataInput.h"
#include "im/actor/model/droidkit/bser/DataOutput.h"
#include "im/actor/model/network/mtp/entity/ProtoStruct.h"
#include "im/actor/model/network/mtp/entity/rpc/RpcError.h"
#include "java/io/IOException.h"


#line 13
@implementation MTRpcError


#line 23
- (instancetype)initWithBSDataInput:(BSDataInput *)stream {
  MTRpcError_initWithBSDataInput_(self, stream);
  return self;
}


#line 27
- (instancetype)initWithInt:(jint)errorCode
               withNSString:(NSString *)errorTag
               withNSString:(NSString *)userMessage
                withBoolean:(jboolean)canTryAgain
              withByteArray:(IOSByteArray *)relatedData {
  MTRpcError_initWithInt_withNSString_withNSString_withBoolean_withByteArray_(self, errorCode, errorTag, userMessage, canTryAgain, relatedData);
  return self;
}

- (jbyte)getHeader {
  return MTRpcError_HEADER;
}


#line 41
- (void)writeBodyWithBSDataOutput:(BSDataOutput *)bs {
  [((BSDataOutput *) nil_chk(bs)) writeIntWithInt:errorCode_];
  [bs writeProtoStringWithNSString:errorTag_];
  [bs writeProtoStringWithNSString:userMessage_];
  [bs writeProtoBoolWithBoolean:canTryAgain_];
  [bs writeProtoBytesWithByteArray:relatedData_ withInt:0 withInt:((IOSByteArray *) nil_chk(relatedData_))->size_];
}


#line 50
- (void)readBodyWithBSDataInput:(BSDataInput *)bs {
  errorCode_ = [((BSDataInput *) nil_chk(bs)) readInt];
  errorTag_ = [bs readProtoString];
  userMessage_ = [bs readProtoString];
  canTryAgain_ = [bs readProtoBool];
  relatedData_ = [bs readProtoBytes];
}


#line 59
- (NSString *)description {
  return JreStrcat("$IC$C", @"RpcError [#", errorCode_, ' ', errorTag_, ']');
}

@end


#line 23
void MTRpcError_initWithBSDataInput_(MTRpcError *self, BSDataInput *stream) {
  (void) MTProtoStruct_initWithBSDataInput_(self, stream);
}


#line 23
MTRpcError *new_MTRpcError_initWithBSDataInput_(BSDataInput *stream) {
  MTRpcError *self = [MTRpcError alloc];
  MTRpcError_initWithBSDataInput_(self, stream);
  return self;
}


#line 27
void MTRpcError_initWithInt_withNSString_withNSString_withBoolean_withByteArray_(MTRpcError *self, jint errorCode, NSString *errorTag, NSString *userMessage, jboolean canTryAgain, IOSByteArray *relatedData) {
  (void) MTProtoStruct_init(self);
  
#line 28
  self->errorCode_ = errorCode;
  self->errorTag_ = errorTag;
  self->userMessage_ = userMessage;
  self->canTryAgain_ = canTryAgain;
  self->relatedData_ = relatedData;
}


#line 27
MTRpcError *new_MTRpcError_initWithInt_withNSString_withNSString_withBoolean_withByteArray_(jint errorCode, NSString *errorTag, NSString *userMessage, jboolean canTryAgain, IOSByteArray *relatedData) {
  MTRpcError *self = [MTRpcError alloc];
  MTRpcError_initWithInt_withNSString_withNSString_withBoolean_withByteArray_(self, errorCode, errorTag, userMessage, canTryAgain, relatedData);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(MTRpcError)
