//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/ThreadingProvider.java
//

#ifndef _AMThreadingProvider_H_
#define _AMThreadingProvider_H_

#include "J2ObjC_header.h"

@class AMAtomicIntegerCompat;
@class AMAtomicLongCompat;
@class AMThreadLocalCompat;
@class DKActorDispatcher;
@class DKActorSystem;
@class DKThreadPriorityEnum;

@protocol AMThreadingProvider < NSObject, JavaObject >

- (jlong)getActorTime;

- (jlong)getCurrentTime;

- (jlong)getSyncedCurrentTime;

- (jint)getCoresCount;

- (AMAtomicIntegerCompat *)createAtomicIntWithInitValue:(jint)value;

- (AMAtomicLongCompat *)createAtomicLongWithInitValue:(jlong)value;

- (AMThreadLocalCompat *)createThreadLocal;

- (DKActorDispatcher *)createDispatcherWithName:(NSString *)name
                               withThreadsCount:(jint)threadsCount
                                   withPriority:(DKThreadPriorityEnum *)priority
                                withActorSystem:(DKActorSystem *)actorSystem;

- (DKActorDispatcher *)createDefaultDispatcherWithName:(NSString *)name
                                          withPriority:(DKThreadPriorityEnum *)priority
                                       withActorSystem:(DKActorSystem *)system;

@end

J2OBJC_EMPTY_STATIC_INIT(AMThreadingProvider)

J2OBJC_TYPE_LITERAL_HEADER(AMThreadingProvider)

#define ImActorModelThreadingProvider AMThreadingProvider

#endif // _AMThreadingProvider_H_
