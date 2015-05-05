//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/updates/UpdateMessageReadByMe.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/updates/UpdateMessageReadByMe.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/Peer.h"
#include "im/actor/model/api/updates/UpdateMessageReadByMe.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Update.h"
#include "java/io/IOException.h"

@interface ImActorModelApiUpdatesUpdateMessageReadByMe () {
 @public
  ImActorModelApiPeer *peer_;
  jlong startDate_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelApiUpdatesUpdateMessageReadByMe, peer_, ImActorModelApiPeer *)


#line 24
@implementation ImActorModelApiUpdatesUpdateMessageReadByMe


#line 27
+ (ImActorModelApiUpdatesUpdateMessageReadByMe *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiUpdatesUpdateMessageReadByMe_fromBytesWithByteArray_(data);
}


#line 34
- (instancetype)initWithImActorModelApiPeer:(ImActorModelApiPeer *)peer
                                   withLong:(jlong)startDate {
  ImActorModelApiUpdatesUpdateMessageReadByMe_initWithImActorModelApiPeer_withLong_(self, peer, startDate);
  return self;
}


#line 39
- (instancetype)init {
  ImActorModelApiUpdatesUpdateMessageReadByMe_init(self);
  return self;
}


#line 43
- (ImActorModelApiPeer *)getPeer {
  return self->peer_;
}

- (jlong)getStartDate {
  return self->startDate_;
}


#line 52
- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->peer_ = [((BSBserValues *) nil_chk(values)) getObjWithInt:1 withBSBserObject:new_ImActorModelApiPeer_init()];
  self->startDate_ = [values getLongWithInt:2];
}


#line 58
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  if (self->peer_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((BSBserWriter *) nil_chk(writer)) writeObjectWithInt:1 withBSBserObject:self->peer_];
  [writer writeLongWithInt:2 withLong:self->startDate_];
}


#line 67
- (NSString *)description {
  NSString *res = @"update MessageReadByMe{";
  res = JreStrcat("$$", res, JreStrcat("$@", @"peer=", self->peer_));
  res = JreStrcat("$$", res, JreStrcat("$J", @", startDate=", self->startDate_));
  res = JreStrcat("$C", res, '}');
  return res;
}


#line 76
- (jint)getHeaderKey {
  return ImActorModelApiUpdatesUpdateMessageReadByMe_HEADER;
}

@end


#line 27
ImActorModelApiUpdatesUpdateMessageReadByMe *ImActorModelApiUpdatesUpdateMessageReadByMe_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiUpdatesUpdateMessageReadByMe_initialize();
  
#line 28
  return ((ImActorModelApiUpdatesUpdateMessageReadByMe *) BSBser_parseWithBSBserObject_withByteArray_(new_ImActorModelApiUpdatesUpdateMessageReadByMe_init(), data));
}

void ImActorModelApiUpdatesUpdateMessageReadByMe_initWithImActorModelApiPeer_withLong_(ImActorModelApiUpdatesUpdateMessageReadByMe *self, ImActorModelApiPeer *peer, jlong startDate) {
  (void) ImActorModelNetworkParserUpdate_init(self);
  
#line 35
  self->peer_ = peer;
  self->startDate_ = startDate;
}


#line 34
ImActorModelApiUpdatesUpdateMessageReadByMe *new_ImActorModelApiUpdatesUpdateMessageReadByMe_initWithImActorModelApiPeer_withLong_(ImActorModelApiPeer *peer, jlong startDate) {
  ImActorModelApiUpdatesUpdateMessageReadByMe *self = [ImActorModelApiUpdatesUpdateMessageReadByMe alloc];
  ImActorModelApiUpdatesUpdateMessageReadByMe_initWithImActorModelApiPeer_withLong_(self, peer, startDate);
  return self;
}


#line 39
void ImActorModelApiUpdatesUpdateMessageReadByMe_init(ImActorModelApiUpdatesUpdateMessageReadByMe *self) {
  (void) ImActorModelNetworkParserUpdate_init(self);
}


#line 39
ImActorModelApiUpdatesUpdateMessageReadByMe *new_ImActorModelApiUpdatesUpdateMessageReadByMe_init() {
  ImActorModelApiUpdatesUpdateMessageReadByMe *self = [ImActorModelApiUpdatesUpdateMessageReadByMe alloc];
  ImActorModelApiUpdatesUpdateMessageReadByMe_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiUpdatesUpdateMessageReadByMe)
