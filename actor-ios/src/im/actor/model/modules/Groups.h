//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/modules/Groups.java
//

#ifndef _ImActorModelModulesGroups_H_
#define _ImActorModelModulesGroups_H_

@class AMGroup;
@class AMGroupVM;
@class AMRpcException;
@class IOSByteArray;
@class ImActorModelApiRpcResponseSeqDate;
@class ImActorModelModulesModules;
@protocol AMCommandCallback;
@protocol AMKeyValueEngine;
@protocol AMKeyValueStorage;

#include "J2ObjC_header.h"
#include "im/actor/model/concurrency/Command.h"
#include "im/actor/model/modules/BaseModule.h"
#include "im/actor/model/mvvm/MVVMCollection.h"
#include "im/actor/model/network/RpcCallback.h"
#include "java/lang/Runnable.h"

@interface ImActorModelModulesGroups : ImActorModelModulesBaseModule {
}

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)modules;

- (id<AMKeyValueEngine>)getGroups;

- (AMMVVMCollection *)getGroupsCollection;

- (id<AMCommand>)editTitleWithInt:(jint)gid
                     withNSString:(NSString *)name;

- (id<AMCommand>)leaveGroupWithInt:(jint)gid;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesGroups)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesGroups)

@interface ImActorModelModulesGroups_$1 : AMMVVMCollection {
}

- (AMGroupVM *)createNewWithAMKeyValueItem:(AMGroup *)raw;

- (IOSByteArray *)serializeWithAMKeyValueItem:(AMGroup *)raw;

- (AMGroup *)deserializeWithByteArray:(IOSByteArray *)raw;

- (instancetype)initWithAMKeyValueStorage:(id<AMKeyValueStorage>)arg$0;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesGroups_$1)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesGroups_$1)

@interface ImActorModelModulesGroups_$2 : NSObject < AMCommand > {
}

- (void)startWithAMCommandCallback:(id<AMCommandCallback>)callback;

- (instancetype)initWithImActorModelModulesGroups:(ImActorModelModulesGroups *)outer$
                                          withInt:(jint)capture$0
                                     withNSString:(NSString *)capture$1;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesGroups_$2)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesGroups_$2)

@interface ImActorModelModulesGroups_$2_$1 : NSObject < JavaLangRunnable > {
}

- (void)run;

- (instancetype)initWithAMCommandCallback:(id<AMCommandCallback>)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesGroups_$2_$1)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesGroups_$2_$1)

@interface ImActorModelModulesGroups_$2_$2 : NSObject < AMRpcCallback > {
}

- (void)onResultWithImActorModelNetworkParserResponse:(ImActorModelApiRpcResponseSeqDate *)response;

- (void)onErrorWithAMRpcException:(AMRpcException *)e;

- (instancetype)initWithImActorModelModulesGroups_$2:(ImActorModelModulesGroups_$2 *)outer$
                                            withLong:(jlong)capture$0
                               withAMCommandCallback:(id<AMCommandCallback>)capture$1;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesGroups_$2_$2)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesGroups_$2_$2)

@interface ImActorModelModulesGroups_$2_$2_$1 : NSObject < JavaLangRunnable > {
}

- (void)run;

- (instancetype)initWithImActorModelModulesGroups_$2_$2:(ImActorModelModulesGroups_$2_$2 *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesGroups_$2_$2_$1)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesGroups_$2_$2_$1)

@interface ImActorModelModulesGroups_$2_$2_$2 : NSObject < JavaLangRunnable > {
}

- (void)run;

- (instancetype)initWithImActorModelModulesGroups_$2_$2:(ImActorModelModulesGroups_$2_$2 *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesGroups_$2_$2_$2)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesGroups_$2_$2_$2)

@interface ImActorModelModulesGroups_$3 : NSObject < AMCommand > {
}

- (void)startWithAMCommandCallback:(id<AMCommandCallback>)callback;

- (instancetype)initWithImActorModelModulesGroups:(ImActorModelModulesGroups *)outer$
                                          withInt:(jint)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesGroups_$3)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesGroups_$3)

@interface ImActorModelModulesGroups_$3_$1 : NSObject < JavaLangRunnable > {
}

- (void)run;

- (instancetype)initWithAMCommandCallback:(id<AMCommandCallback>)capture$0;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesGroups_$3_$1)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesGroups_$3_$1)

@interface ImActorModelModulesGroups_$3_$2 : NSObject < AMRpcCallback > {
}

- (void)onResultWithImActorModelNetworkParserResponse:(ImActorModelApiRpcResponseSeqDate *)response;

- (void)onErrorWithAMRpcException:(AMRpcException *)e;

- (instancetype)initWithImActorModelModulesGroups_$3:(ImActorModelModulesGroups_$3 *)outer$
                                            withLong:(jlong)capture$0
                               withAMCommandCallback:(id<AMCommandCallback>)capture$1;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesGroups_$3_$2)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesGroups_$3_$2)

@interface ImActorModelModulesGroups_$3_$2_$1 : NSObject < JavaLangRunnable > {
}

- (void)run;

- (instancetype)initWithImActorModelModulesGroups_$3_$2:(ImActorModelModulesGroups_$3_$2 *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesGroups_$3_$2_$1)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesGroups_$3_$2_$1)

@interface ImActorModelModulesGroups_$3_$2_$2 : NSObject < JavaLangRunnable > {
}

- (void)run;

- (instancetype)initWithImActorModelModulesGroups_$3_$2:(ImActorModelModulesGroups_$3_$2 *)outer$;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesGroups_$3_$2_$2)

CF_EXTERN_C_BEGIN
CF_EXTERN_C_END

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesGroups_$3_$2_$2)

#endif // _ImActorModelModulesGroups_H_
