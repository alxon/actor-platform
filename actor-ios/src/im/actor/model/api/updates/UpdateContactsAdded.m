//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/updates/UpdateContactsAdded.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/updates/UpdateContactsAdded.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"
#include "java/util/List.h"

@interface ImActorModelApiUpdatesUpdateContactsAdded () {
 @public
  id<JavaUtilList> uids_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiUpdatesUpdateContactsAdded, uids_, id<JavaUtilList>)

@implementation ImActorModelApiUpdatesUpdateContactsAdded

+ (ImActorModelApiUpdatesUpdateContactsAdded *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiUpdatesUpdateContactsAdded_fromBytesWithByteArray_(data);
}

- (instancetype)initWithJavaUtilList:(id<JavaUtilList>)uids {
  if (self = [super init]) {
    self->uids_ = uids;
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (id<JavaUtilList>)getUids {
  return self->uids_;
}

- (void)parseWithImActorModelDroidkitBserBserValues:(ImActorModelDroidkitBserBserValues *)values {
  self->uids_ = [((ImActorModelDroidkitBserBserValues *) nil_chk(values)) getRepeatedIntWithInt:1];
}

- (void)serializeWithImActorModelDroidkitBserBserWriter:(ImActorModelDroidkitBserBserWriter *)writer {
  [((ImActorModelDroidkitBserBserWriter *) nil_chk(writer)) writeRepeatedIntWithInt:1 withJavaUtilList:self->uids_];
}

- (jint)getHeaderKey {
  return ImActorModelApiUpdatesUpdateContactsAdded_HEADER;
}

- (void)copyAllFieldsTo:(ImActorModelApiUpdatesUpdateContactsAdded *)other {
  [super copyAllFieldsTo:other];
  other->uids_ = uids_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "fromBytesWithByteArray:", "fromBytes", "Lim.actor.model.api.updates.UpdateContactsAdded;", 0x9, "Ljava.io.IOException;" },
    { "initWithJavaUtilList:", "UpdateContactsAdded", NULL, 0x1, NULL },
    { "init", "UpdateContactsAdded", NULL, 0x1, NULL },
    { "getUids", NULL, "Ljava.util.List;", 0x1, NULL },
    { "parseWithImActorModelDroidkitBserBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;" },
    { "serializeWithImActorModelDroidkitBserBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;" },
    { "getHeaderKey", NULL, "I", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HEADER_", NULL, 0x19, "I", NULL, .constantValue.asInt = ImActorModelApiUpdatesUpdateContactsAdded_HEADER },
    { "uids_", NULL, 0x2, "Ljava.util.List;", NULL,  },
  };
  static const J2ObjcClassInfo _ImActorModelApiUpdatesUpdateContactsAdded = { 1, "UpdateContactsAdded", "im.actor.model.api.updates", NULL, 0x1, 7, methods, 2, fields, 0, NULL};
  return &_ImActorModelApiUpdatesUpdateContactsAdded;
}

@end

ImActorModelApiUpdatesUpdateContactsAdded *ImActorModelApiUpdatesUpdateContactsAdded_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiUpdatesUpdateContactsAdded_init();
  return ((ImActorModelApiUpdatesUpdateContactsAdded *) ImActorModelDroidkitBserBser_parseWithImActorModelDroidkitBserBserObject_withByteArray_([[ImActorModelApiUpdatesUpdateContactsAdded alloc] init], data));
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiUpdatesUpdateContactsAdded)
