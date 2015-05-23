//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/base/FatSeqUpdate.java
//

#ifndef _ImActorModelApiBaseFatSeqUpdate_H_
#define _ImActorModelApiBaseFatSeqUpdate_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/RpcScope.h"

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;
@protocol JavaUtilList;

#define ImActorModelApiBaseFatSeqUpdate_HEADER 73

@interface ImActorModelApiBaseFatSeqUpdate : APRpcScope

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithInt:(jint)seq
              withByteArray:(IOSByteArray *)state
                    withInt:(jint)updateHeader
              withByteArray:(IOSByteArray *)update
           withJavaUtilList:(id<JavaUtilList>)users
           withJavaUtilList:(id<JavaUtilList>)groups;

+ (ImActorModelApiBaseFatSeqUpdate *)fromBytesWithByteArray:(IOSByteArray *)data;

- (id<JavaUtilList>)getGroups;

- (jint)getHeaderKey;

- (jint)getSeq;

- (IOSByteArray *)getState;

- (IOSByteArray *)getUpdate;

- (jint)getUpdateHeader;

- (id<JavaUtilList>)getUsers;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiBaseFatSeqUpdate)

J2OBJC_STATIC_FIELD_GETTER(ImActorModelApiBaseFatSeqUpdate, HEADER, jint)

FOUNDATION_EXPORT ImActorModelApiBaseFatSeqUpdate *ImActorModelApiBaseFatSeqUpdate_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ImActorModelApiBaseFatSeqUpdate_initWithInt_withByteArray_withInt_withByteArray_withJavaUtilList_withJavaUtilList_(ImActorModelApiBaseFatSeqUpdate *self, jint seq, IOSByteArray *state, jint updateHeader, IOSByteArray *update, id<JavaUtilList> users, id<JavaUtilList> groups);

FOUNDATION_EXPORT ImActorModelApiBaseFatSeqUpdate *new_ImActorModelApiBaseFatSeqUpdate_initWithInt_withByteArray_withInt_withByteArray_withJavaUtilList_withJavaUtilList_(jint seq, IOSByteArray *state, jint updateHeader, IOSByteArray *update, id<JavaUtilList> users, id<JavaUtilList> groups) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ImActorModelApiBaseFatSeqUpdate_init(ImActorModelApiBaseFatSeqUpdate *self);

FOUNDATION_EXPORT ImActorModelApiBaseFatSeqUpdate *new_ImActorModelApiBaseFatSeqUpdate_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiBaseFatSeqUpdate)

#endif // _ImActorModelApiBaseFatSeqUpdate_H_
