//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/util/DataInput.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/util/DataInput.h"
#include "java/io/IOException.h"

@interface AMDataInput () {
 @public
  IOSByteArray *data_;
  jint offset_;
  jint maxOffset_;
}
@end

J2OBJC_FIELD_SETTER(AMDataInput, data_, IOSByteArray *)

@implementation AMDataInput

- (instancetype)initWithByteArray:(IOSByteArray *)data
                          withInt:(jint)offset
                          withInt:(jint)len {
  if (self = [super init]) {
    self->data_ = data;
    self->offset_ = offset;
    self->maxOffset_ = offset + len;
  }
  return self;
}

- (jint)readByte {
  if (offset_ == maxOffset_) {
    @throw [[JavaIoIOException alloc] init];
  }
  return IOSByteArray_Get(nil_chk(data_), offset_++) & (jint) 0xFF;
}

- (jint)readByteSilent {
  if (offset_ == maxOffset_) {
    return -1;
  }
  return IOSByteArray_Get(nil_chk(data_), offset_++) & (jint) 0xFF;
}

- (jint)readInt {
  if (offset_ + 4 > maxOffset_) {
    @throw [[JavaIoIOException alloc] init];
  }
  jint res = (IOSByteArray_Get(nil_chk(data_), offset_ + 3) & (jint) 0xFF) + (LShift32((IOSByteArray_Get(data_, offset_ + 2) & (jint) 0xFF), 8)) + (LShift32((IOSByteArray_Get(data_, offset_ + 1) & (jint) 0xFF), 16)) + (LShift32((IOSByteArray_Get(data_, offset_) & (jint) 0xFF), 24));
  offset_ += 4;
  return res;
}

- (jlong)readLong {
  if (offset_ + 8 > maxOffset_) {
    @throw [[JavaIoIOException alloc] init];
  }
  jlong a1 = IOSByteArray_Get(nil_chk(data_), offset_ + 3) & (jint) 0xFF;
  jlong a2 = IOSByteArray_Get(data_, offset_ + 2) & (jint) 0xFF;
  jlong a3 = IOSByteArray_Get(data_, offset_ + 1) & (jint) 0xFF;
  jlong a4 = IOSByteArray_Get(data_, offset_ + 0) & (jint) 0xFF;
  jlong res1 = (a1) + (LShift64(a2, 8)) + (LShift64(a3, 16)) + (LShift64(a4, 24));
  offset_ += 4;
  jlong b1 = IOSByteArray_Get(data_, offset_ + 3) & (jint) 0xFF;
  jlong b2 = IOSByteArray_Get(data_, offset_ + 2) & (jint) 0xFF;
  jlong b3 = IOSByteArray_Get(data_, offset_ + 1) & (jint) 0xFF;
  jlong b4 = IOSByteArray_Get(data_, offset_ + 0) & (jint) 0xFF;
  jlong res2 = (b1) + (LShift64(b2, 8)) + (LShift64(b3, 16)) + (LShift64(b4, 24));
  offset_ += 4;
  return res2 + (LShift64(res1, 32));
}

- (jlong)readUInt {
  if (offset_ + 8 > maxOffset_) {
    @throw [[JavaIoIOException alloc] init];
  }
  jlong a1 = IOSByteArray_Get(nil_chk(data_), offset_ + 3) & (jint) 0xFF;
  jlong a2 = IOSByteArray_Get(data_, offset_ + 2) & (jint) 0xFF;
  jlong a3 = IOSByteArray_Get(data_, offset_ + 1) & (jint) 0xFF;
  jlong a4 = IOSByteArray_Get(data_, offset_ + 0) & (jint) 0xFF;
  offset_ += 4;
  return (a1) + (LShift64(a2, 8)) + (LShift64(a3, 16)) + (LShift64(a4, 24));
}

- (IOSByteArray *)readBytesWithInt:(jint)count {
  if (offset_ + count > maxOffset_) {
    @throw [[JavaIoIOException alloc] initWithNSString:JreStrcat("$I$I", @"Too many to read, max len: ", maxOffset_, @", required len: ", (offset_ + count))];
  }
  IOSByteArray *res = [IOSByteArray newArrayWithLength:count];
  for (jint i = 0; i < count; i++) {
    *IOSByteArray_GetRef(res, i) = IOSByteArray_Get(nil_chk(data_), offset_++);
  }
  return res;
}

- (jlong)readVarInt {
  jlong value = 0;
  jlong i = 0;
  jlong b;
  do {
    if (offset_ == maxOffset_) {
      @throw [[JavaIoIOException alloc] init];
    }
    b = IOSByteArray_Get(nil_chk(data_), offset_++) & (jint) 0xFF;
    if ((b & (jint) 0x80) != 0) {
      value |= LShift64((b & (jint) 0x7F), i);
      i += 7;
      if (i > 70) {
        @throw [[JavaIoIOException alloc] init];
      }
    }
    else {
      break;
    }
  }
  while (YES);
  return value | (LShift64(b, i));
}

- (IOSByteArray *)readProtoBytes {
  jint len = (jint) [self readVarInt];
  return [self readBytesWithInt:len];
}

- (IOSLongArray *)readProtoLongs {
  jint len = (jint) [self readVarInt];
  IOSLongArray *res = [IOSLongArray newArrayWithLength:len];
  for (jint i = 0; i < res->size_; i++) {
    *IOSLongArray_GetRef(res, i) = [self readLong];
  }
  return res;
}

- (NSString *)readProtoString {
  IOSByteArray *data = [self readProtoBytes];
  return [NSString stringWithBytes:data charsetName:@"UTF-8"];
}

- (jboolean)readProtoBool {
  return [self readByte] != 0;
}

- (void)copyAllFieldsTo:(AMDataInput *)other {
  [super copyAllFieldsTo:other];
  other->data_ = data_;
  other->offset_ = offset_;
  other->maxOffset_ = maxOffset_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMDataInput)
