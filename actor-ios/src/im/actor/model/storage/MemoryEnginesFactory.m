//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/storage/MemoryEnginesFactory.java
//

#include "J2ObjC_source.h"
#include "im/actor/model/entity/Peer.h"
#include "im/actor/model/mvvm/KeyValueEngine.h"
#include "im/actor/model/mvvm/ListEngine.h"
#include "im/actor/model/storage/MemoryEnginesFactory.h"
#include "im/actor/model/storage/MemoryKeyValueEngine.h"
#include "im/actor/model/storage/MemoryListEngine.h"

@implementation ImActorModelStorageMemoryEnginesFactory

- (id<ImActorModelMvvmKeyValueEngine>)createUsersEngine {
  return [[ImActorModelStorageMemoryKeyValueEngine alloc] init];
}

- (id<ImActorModelMvvmListEngine>)createDialogsEngine {
  return [[ImActorModelStorageMemoryListEngine alloc] init];
}

- (id<ImActorModelMvvmListEngine>)createMessagesEngineWithImActorModelEntityPeer:(ImActorModelEntityPeer *)peer {
  return [[ImActorModelStorageMemoryListEngine alloc] init];
}

- (id<ImActorModelMvvmKeyValueEngine>)pendingMessagesWithImActorModelEntityPeer:(ImActorModelEntityPeer *)peer {
  return nil;
}

- (instancetype)init {
  return [super init];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "createUsersEngine", NULL, "Lim.actor.model.mvvm.KeyValueEngine;", 0x1, NULL },
    { "createDialogsEngine", NULL, "Lim.actor.model.mvvm.ListEngine;", 0x1, NULL },
    { "createMessagesEngineWithImActorModelEntityPeer:", "createMessagesEngine", "Lim.actor.model.mvvm.ListEngine;", 0x1, NULL },
    { "pendingMessagesWithImActorModelEntityPeer:", "pendingMessages", "Lim.actor.model.mvvm.KeyValueEngine;", 0x1, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static const J2ObjcClassInfo _ImActorModelStorageMemoryEnginesFactory = { 1, "MemoryEnginesFactory", "im.actor.model.storage", NULL, 0x1, 5, methods, 0, NULL, 0, NULL};
  return &_ImActorModelStorageMemoryEnginesFactory;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelStorageMemoryEnginesFactory)
