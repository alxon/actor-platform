//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/updates/UpdateUserLastSeen.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/updates/UpdateUserLastSeen.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Update.h"
#include "java/io/IOException.h"

@interface APUpdateUserLastSeen () {
 @public
  jint uid_;
  jlong date_;
}

@end

@implementation APUpdateUserLastSeen

+ (APUpdateUserLastSeen *)fromBytesWithByteArray:(IOSByteArray *)data {
  return APUpdateUserLastSeen_fromBytesWithByteArray_(data);
}

- (instancetype)initWithInt:(jint)uid
                   withLong:(jlong)date {
  APUpdateUserLastSeen_initWithInt_withLong_(self, uid, date);
  return self;
}

- (instancetype)init {
  APUpdateUserLastSeen_init(self);
  return self;
}

- (jint)getUid {
  return self->uid_;
}

- (jlong)getDate {
  return self->date_;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->uid_ = [((BSBserValues *) nil_chk(values)) getIntWithInt:1];
  self->date_ = [values getLongWithInt:2];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->uid_];
  [writer writeLongWithInt:2 withLong:self->date_];
}

- (NSString *)description {
  NSString *res = @"update UserLastSeen{";
  res = JreStrcat("$$", res, JreStrcat("$I", @"uid=", self->uid_));
  res = JreStrcat("$$", res, JreStrcat("$J", @", date=", self->date_));
  res = JreStrcat("$C", res, '}');
  return res;
}

- (jint)getHeaderKey {
  return APUpdateUserLastSeen_HEADER;
}

@end

APUpdateUserLastSeen *APUpdateUserLastSeen_fromBytesWithByteArray_(IOSByteArray *data) {
  APUpdateUserLastSeen_initialize();
  return ((APUpdateUserLastSeen *) BSBser_parseWithBSBserObject_withByteArray_(new_APUpdateUserLastSeen_init(), data));
}

void APUpdateUserLastSeen_initWithInt_withLong_(APUpdateUserLastSeen *self, jint uid, jlong date) {
  (void) APUpdate_init(self);
  self->uid_ = uid;
  self->date_ = date;
}

APUpdateUserLastSeen *new_APUpdateUserLastSeen_initWithInt_withLong_(jint uid, jlong date) {
  APUpdateUserLastSeen *self = [APUpdateUserLastSeen alloc];
  APUpdateUserLastSeen_initWithInt_withLong_(self, uid, date);
  return self;
}

void APUpdateUserLastSeen_init(APUpdateUserLastSeen *self) {
  (void) APUpdate_init(self);
}

APUpdateUserLastSeen *new_APUpdateUserLastSeen_init() {
  APUpdateUserLastSeen *self = [APUpdateUserLastSeen alloc];
  APUpdateUserLastSeen_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(APUpdateUserLastSeen)
