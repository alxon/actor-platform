//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/entity/Group.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/Avatar.h"
#include "im/actor/model/api/Group.h"
#include "im/actor/model/api/Member.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/droidkit/bser/util/SparseArray.h"
#include "im/actor/model/entity/Avatar.h"
#include "im/actor/model/entity/Group.h"
#include "im/actor/model/entity/GroupMember.h"
#include "im/actor/model/entity/Peer.h"
#include "im/actor/model/entity/PeerType.h"
#include "im/actor/model/entity/WrapperEntity.h"
#include "java/io/IOException.h"
#include "java/util/ArrayList.h"
#include "java/util/List.h"

#define AMGroup_RECORD_ID 10

@interface AMGroup () {
 @public
  jint groupId_;
  jlong accessHash_;
  NSString *title_;
  AMAvatar *avatar_;
  jint adminId_;
  jboolean isMember__;
  id<JavaUtilList> members_;
}

@end

J2OBJC_FIELD_SETTER(AMGroup, title_, NSString *)
J2OBJC_FIELD_SETTER(AMGroup, avatar_, AMAvatar *)
J2OBJC_FIELD_SETTER(AMGroup, members_, id<JavaUtilList>)

J2OBJC_STATIC_FIELD_GETTER(AMGroup, RECORD_ID, jint)

@interface AMGroup_ObsoleteGroupMember () {
 @public
  jint uid_;
  jint inviterUid_;
  jlong inviteDate_;
  jboolean isAdministrator__;
}

@end

@implementation AMGroup

- (instancetype)initWithAPGroup:(APGroup *)group {
  AMGroup_initWithAPGroup_(self, group);
  return self;
}

- (instancetype)initWithByteArray:(IOSByteArray *)data {
  AMGroup_initWithByteArray_(self, data);
  return self;
}

- (AMPeer *)peer {
  return new_AMPeer_initWithAMPeerTypeEnum_withInt_(AMPeerTypeEnum_get_GROUP(), groupId_);
}

- (jint)getGroupId {
  return groupId_;
}

- (jlong)getAccessHash {
  return accessHash_;
}

- (NSString *)getTitle {
  return title_;
}

- (AMAvatar *)getAvatar {
  return avatar_;
}

- (id<JavaUtilList>)getMembers {
  return members_;
}

- (jint)getAdminId {
  return adminId_;
}

- (jboolean)isMember {
  return isMember__;
}

- (AMGroup *)changeMemberWithBoolean:(jboolean)isMember {
  APGroup *w = [self getWrapped];
  APGroup *res = new_APGroup_initWithInt_withLong_withNSString_withAPAvatar_withBoolean_withInt_withJavaUtilList_withLong_([((APGroup *) nil_chk(w)) getId], [w getAccessHash], [w getTitle], [w getAvatar], isMember, [w getCreatorUid], [w getMembers], [w getCreateDate]);
  [res setUnmappedObjectsWithImActorModelDroidkitBserUtilSparseArray:[w getUnmappedObjects]];
  return new_AMGroup_initWithAPGroup_(res);
}

- (AMGroup *)clearMembers {
  APGroup *w = [self getWrapped];
  APGroup *res = new_APGroup_initWithInt_withLong_withNSString_withAPAvatar_withBoolean_withInt_withJavaUtilList_withLong_([((APGroup *) nil_chk(w)) getId], [w getAccessHash], [w getTitle], [w getAvatar], [w isMember], [w getCreatorUid], new_JavaUtilArrayList_init(), [w getCreateDate]);
  [res setUnmappedObjectsWithImActorModelDroidkitBserUtilSparseArray:[w getUnmappedObjects]];
  return new_AMGroup_initWithAPGroup_(res);
}

- (AMGroup *)removeMemberWithInt:(jint)uid {
  APGroup *w = [self getWrapped];
  JavaUtilArrayList *nMembers = new_JavaUtilArrayList_init();
  for (APMember * __strong member in nil_chk([((APGroup *) nil_chk(w)) getMembers])) {
    if ([((APMember *) nil_chk(member)) getUid] != uid) {
      [nMembers addWithId:member];
    }
  }
  APGroup *res = new_APGroup_initWithInt_withLong_withNSString_withAPAvatar_withBoolean_withInt_withJavaUtilList_withLong_([w getId], [w getAccessHash], [w getTitle], [w getAvatar], [w isMember], [w getCreatorUid], nMembers, [w getCreateDate]);
  [res setUnmappedObjectsWithImActorModelDroidkitBserUtilSparseArray:[w getUnmappedObjects]];
  return new_AMGroup_initWithAPGroup_(res);
}

- (AMGroup *)addMemberWithInt:(jint)uid
                      withInt:(jint)inviterUid
                     withLong:(jlong)inviteDate {
  APGroup *w = [self getWrapped];
  JavaUtilArrayList *nMembers = new_JavaUtilArrayList_init();
  for (APMember * __strong member in nil_chk([((APGroup *) nil_chk(w)) getMembers])) {
    if ([((APMember *) nil_chk(member)) getUid] != uid) {
      [nMembers addWithId:member];
    }
  }
  [nMembers addWithId:new_APMember_initWithInt_withInt_withLong_(uid, inviterUid, inviteDate)];
  APGroup *res = new_APGroup_initWithInt_withLong_withNSString_withAPAvatar_withBoolean_withInt_withJavaUtilList_withLong_([w getId], [w getAccessHash], [w getTitle], [w getAvatar], [w isMember], [w getCreatorUid], nMembers, [w getCreateDate]);
  [res setUnmappedObjectsWithImActorModelDroidkitBserUtilSparseArray:[w getUnmappedObjects]];
  return new_AMGroup_initWithAPGroup_(res);
}

- (AMGroup *)updateMembersWithJavaUtilList:(id<JavaUtilList>)nMembers {
  APGroup *w = [self getWrapped];
  APGroup *res = new_APGroup_initWithInt_withLong_withNSString_withAPAvatar_withBoolean_withInt_withJavaUtilList_withLong_([((APGroup *) nil_chk(w)) getId], [w getAccessHash], [w getTitle], [w getAvatar], [w isMember], [w getCreatorUid], nMembers, [w getCreateDate]);
  [res setUnmappedObjectsWithImActorModelDroidkitBserUtilSparseArray:[w getUnmappedObjects]];
  return new_AMGroup_initWithAPGroup_(res);
}

- (AMGroup *)editTitleWithNSString:(NSString *)title {
  APGroup *w = [self getWrapped];
  APGroup *res = new_APGroup_initWithInt_withLong_withNSString_withAPAvatar_withBoolean_withInt_withJavaUtilList_withLong_([((APGroup *) nil_chk(w)) getId], [w getAccessHash], title, [w getAvatar], [w isMember], [w getCreatorUid], [w getMembers], [w getCreateDate]);
  [res setUnmappedObjectsWithImActorModelDroidkitBserUtilSparseArray:[w getUnmappedObjects]];
  return new_AMGroup_initWithAPGroup_(res);
}

- (AMGroup *)editAvatarWithAPAvatar:(APAvatar *)avatar {
  APGroup *w = [self getWrapped];
  APGroup *res = new_APGroup_initWithInt_withLong_withNSString_withAPAvatar_withBoolean_withInt_withJavaUtilList_withLong_([((APGroup *) nil_chk(w)) getId], [w getAccessHash], [w getTitle], avatar, [w isMember], [w getCreatorUid], [w getMembers], [w getCreateDate]);
  [res setUnmappedObjectsWithImActorModelDroidkitBserUtilSparseArray:[w getUnmappedObjects]];
  return new_AMGroup_initWithAPGroup_(res);
}

- (void)applyWrappedWithBSBserObject:(APGroup *)wrapped {
  self->groupId_ = [((APGroup *) nil_chk(wrapped)) getId];
  self->accessHash_ = [wrapped getAccessHash];
  self->title_ = [wrapped getTitle];
  self->avatar_ = [wrapped getAvatar] != nil ? new_AMAvatar_initWithAPAvatar_([wrapped getAvatar]) : nil;
  self->adminId_ = [wrapped getCreatorUid];
  self->members_ = new_JavaUtilArrayList_init();
  for (APMember * __strong m in nil_chk([wrapped getMembers])) {
    [self->members_ addWithId:new_AMGroupMember_initWithInt_withInt_withLong_withBoolean_([((APMember *) nil_chk(m)) getUid], [m getInviterUid], [m getDate], [m getUid] == self->adminId_)];
  }
  self->isMember__ = [wrapped isMember];
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  if (![((BSBserValues *) nil_chk(values)) getBoolWithInt:9 withBoolean:NO]) {
    jint groupId = [values getIntWithInt:1];
    jlong accessHash = [values getLongWithInt:2];
    NSString *title = [values getStringWithInt:3];
    APAvatar *avatar = new_APAvatar_init();
    if ([values optBytesWithInt:4] != nil) {
      avatar = [new_AMAvatar_initWithByteArray_([values getBytesWithInt:4]) toWrapped];
    }
    jint adminId = [values getIntWithInt:5];
    jint count = [values getRepeatedCountWithInt:6];
    id<JavaUtilList> members = new_JavaUtilArrayList_init();
    if (count > 0) {
      id<JavaUtilList> res = new_JavaUtilArrayList_init();
      for (jint i = 0; i < count; i++) {
        [res addWithId:new_AMGroup_ObsoleteGroupMember_initWithAMGroup_(self)];
      }
      res = [values getRepeatedObjWithInt:6 withJavaUtilList:res];
      for (AMGroup_ObsoleteGroupMember * __strong o in nil_chk(res)) {
        [members addWithId:new_APMember_initWithInt_withInt_withLong_([((AMGroup_ObsoleteGroupMember *) nil_chk(o)) getUid], [o getInviterUid], [o getInviteDate])];
      }
    }
    jboolean isMember = [values getBoolWithInt:7];
    [self setWrappedWithBSBserObject:new_APGroup_initWithInt_withLong_withNSString_withAPAvatar_withBoolean_withInt_withJavaUtilList_withLong_(groupId, accessHash, title, avatar, isMember, adminId, members, 0)];
  }
  [super parseWithBSBserValues:values];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeBoolWithInt:9 withBoolean:YES];
  [super serializeWithBSBserWriter:writer];
}

- (jlong)getEngineId {
  return groupId_;
}

- (APGroup *)createInstance {
  return new_APGroup_init();
}

@end

void AMGroup_initWithAPGroup_(AMGroup *self, APGroup *group) {
  (void) AMWrapperEntity_initWithInt_withBSBserObject_(self, AMGroup_RECORD_ID, group);
}

AMGroup *new_AMGroup_initWithAPGroup_(APGroup *group) {
  AMGroup *self = [AMGroup alloc];
  AMGroup_initWithAPGroup_(self, group);
  return self;
}

void AMGroup_initWithByteArray_(AMGroup *self, IOSByteArray *data) {
  (void) AMWrapperEntity_initWithInt_withByteArray_(self, AMGroup_RECORD_ID, data);
}

AMGroup *new_AMGroup_initWithByteArray_(IOSByteArray *data) {
  AMGroup *self = [AMGroup alloc];
  AMGroup_initWithByteArray_(self, data);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMGroup)

@implementation AMGroup_ObsoleteGroupMember

- (jint)getUid {
  return uid_;
}

- (jint)getInviterUid {
  return inviterUid_;
}

- (jlong)getInviteDate {
  return inviteDate_;
}

- (jboolean)isAdministrator {
  return isAdministrator__;
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  uid_ = [((BSBserValues *) nil_chk(values)) getIntWithInt:1];
  inviterUid_ = [values getIntWithInt:2];
  inviteDate_ = [values getLongWithInt:3];
  isAdministrator__ = [values getBoolWithInt:4];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:uid_];
  [writer writeIntWithInt:2 withInt:inviterUid_];
  [writer writeLongWithInt:3 withLong:inviteDate_];
  [writer writeBoolWithInt:4 withBoolean:isAdministrator__];
}

- (instancetype)initWithAMGroup:(AMGroup *)outer$ {
  AMGroup_ObsoleteGroupMember_initWithAMGroup_(self, outer$);
  return self;
}

@end

void AMGroup_ObsoleteGroupMember_initWithAMGroup_(AMGroup_ObsoleteGroupMember *self, AMGroup *outer$) {
  (void) BSBserObject_init(self);
}

AMGroup_ObsoleteGroupMember *new_AMGroup_ObsoleteGroupMember_initWithAMGroup_(AMGroup *outer$) {
  AMGroup_ObsoleteGroupMember *self = [AMGroup_ObsoleteGroupMember alloc];
  AMGroup_ObsoleteGroupMember_initWithAMGroup_(self, outer$);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMGroup_ObsoleteGroupMember)
