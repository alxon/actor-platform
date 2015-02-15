//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/api/Group.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/Avatar.h"
#include "im/actor/model/api/Group.h"
#include "im/actor/model/api/Member.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

@interface ImActorModelApiGroup () {
 @public
  jint id__;
  jlong accessHash_;
  NSString *title_;
  ImActorModelApiAvatar *avatar_;
  jboolean isMember__;
  jint adminUid_;
  id<JavaUtilList> members_;
  jlong createDate_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelApiGroup, title_, NSString *)
J2OBJC_FIELD_SETTER(ImActorModelApiGroup, avatar_, ImActorModelApiAvatar *)
J2OBJC_FIELD_SETTER(ImActorModelApiGroup, members_, id<JavaUtilList>)

@implementation ImActorModelApiGroup

- (instancetype)initWithInt:(jint)id_
                   withLong:(jlong)accessHash
               withNSString:(NSString *)title
  withImActorModelApiAvatar:(ImActorModelApiAvatar *)avatar
                withBoolean:(jboolean)isMember
                    withInt:(jint)adminUid
           withJavaUtilList:(id<JavaUtilList>)members
                   withLong:(jlong)createDate {
  if (self = [super init]) {
    self->id__ = id_;
    self->accessHash_ = accessHash;
    self->title_ = title;
    self->avatar_ = avatar;
    self->isMember__ = isMember;
    self->adminUid_ = adminUid;
    self->members_ = members;
    self->createDate_ = createDate;
  }
  return self;
}

- (instancetype)init {
  return [super init];
}

- (jint)getId {
  return self->id__;
}

- (jlong)getAccessHash {
  return self->accessHash_;
}

- (NSString *)getTitle {
  return self->title_;
}

- (ImActorModelApiAvatar *)getAvatar {
  return self->avatar_;
}

- (jboolean)isMember {
  return self->isMember__;
}

- (jint)getAdminUid {
  return self->adminUid_;
}

- (id<JavaUtilList>)getMembers {
  return self->members_;
}

- (jlong)getCreateDate {
  return self->createDate_;
}

- (void)parseWithImActorModelDroidkitBserBserValues:(ImActorModelDroidkitBserBserValues *)values {
  self->id__ = [((ImActorModelDroidkitBserBserValues *) nil_chk(values)) getIntWithInt:1];
  self->accessHash_ = [values getLongWithInt:2];
  self->title_ = [values getStringWithInt:3];
  self->avatar_ = [values optObjWithInt:4 withImActorModelDroidkitBserBserObject:[[ImActorModelApiAvatar alloc] init]];
  self->isMember__ = [values getBoolWithInt:6];
  self->adminUid_ = [values getIntWithInt:8];
  id<JavaUtilList> _members = [[JavaUtilArrayList alloc] init];
  for (jint i = 0; i < [values getRepeatedCountWithInt:9]; i++) {
    [_members addWithId:[[ImActorModelApiMember alloc] init]];
  }
  self->members_ = [values getRepeatedObjWithInt:9 withJavaUtilList:_members];
  self->createDate_ = [values getLongWithInt:10];
}

- (void)serializeWithImActorModelDroidkitBserBserWriter:(ImActorModelDroidkitBserBserWriter *)writer {
  [((ImActorModelDroidkitBserBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->id__];
  [writer writeLongWithInt:2 withLong:self->accessHash_];
  if (self->title_ == nil) {
    @throw [[JavaIoIOException alloc] init];
  }
  [writer writeStringWithInt:3 withNSString:self->title_];
  if (self->avatar_ != nil) {
    [writer writeObjectWithInt:4 withImActorModelDroidkitBserBserObject:self->avatar_];
  }
  [writer writeBoolWithInt:6 withBoolean:self->isMember__];
  [writer writeIntWithInt:8 withInt:self->adminUid_];
  [writer writeRepeatedObjWithInt:9 withJavaUtilList:self->members_];
  [writer writeLongWithInt:10 withLong:self->createDate_];
}

- (void)copyAllFieldsTo:(ImActorModelApiGroup *)other {
  [super copyAllFieldsTo:other];
  other->id__ = id__;
  other->accessHash_ = accessHash_;
  other->title_ = title_;
  other->avatar_ = avatar_;
  other->isMember__ = isMember__;
  other->adminUid_ = adminUid_;
  other->members_ = members_;
  other->createDate_ = createDate_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withLong:withNSString:withImActorModelApiAvatar:withBoolean:withInt:withJavaUtilList:withLong:", "Group", NULL, 0x1, NULL },
    { "init", "Group", NULL, 0x1, NULL },
    { "getId", NULL, "I", 0x1, NULL },
    { "getAccessHash", NULL, "J", 0x1, NULL },
    { "getTitle", NULL, "Ljava.lang.String;", 0x1, NULL },
    { "getAvatar", NULL, "Lim.actor.model.api.Avatar;", 0x1, NULL },
    { "isMember", NULL, "Z", 0x1, NULL },
    { "getAdminUid", NULL, "I", 0x1, NULL },
    { "getMembers", NULL, "Ljava.util.List;", 0x1, NULL },
    { "getCreateDate", NULL, "J", 0x1, NULL },
    { "parseWithImActorModelDroidkitBserBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;" },
    { "serializeWithImActorModelDroidkitBserBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;" },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "id__", "id", 0x2, "I", NULL,  },
    { "accessHash_", NULL, 0x2, "J", NULL,  },
    { "title_", NULL, 0x2, "Ljava.lang.String;", NULL,  },
    { "avatar_", NULL, 0x2, "Lim.actor.model.api.Avatar;", NULL,  },
    { "isMember__", "isMember", 0x2, "Z", NULL,  },
    { "adminUid_", NULL, 0x2, "I", NULL,  },
    { "members_", NULL, 0x2, "Ljava.util.List;", NULL,  },
    { "createDate_", NULL, 0x2, "J", NULL,  },
  };
  static const J2ObjcClassInfo _ImActorModelApiGroup = { 1, "Group", "im.actor.model.api", NULL, 0x1, 12, methods, 8, fields, 0, NULL};
  return &_ImActorModelApiGroup;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiGroup)
