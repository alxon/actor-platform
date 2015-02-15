//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/droidkit/actors/ThreadPriority.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/actors/ThreadPriority.h"
#include "java/lang/IllegalArgumentException.h"

BOOL ImActorModelDroidkitActorsThreadPriorityEnum_initialized = NO;

ImActorModelDroidkitActorsThreadPriorityEnum *ImActorModelDroidkitActorsThreadPriorityEnum_values_[3];

@implementation ImActorModelDroidkitActorsThreadPriorityEnum

- (instancetype)initWithNSString:(NSString *)__name
                         withInt:(jint)__ordinal {
  return [super initWithNSString:__name withInt:__ordinal];
}

IOSObjectArray *ImActorModelDroidkitActorsThreadPriorityEnum_values() {
  ImActorModelDroidkitActorsThreadPriorityEnum_init();
  return [IOSObjectArray arrayWithObjects:ImActorModelDroidkitActorsThreadPriorityEnum_values_ count:3 type:ImActorModelDroidkitActorsThreadPriorityEnum_class_()];
}
+ (IOSObjectArray *)values {
  return ImActorModelDroidkitActorsThreadPriorityEnum_values();
}

+ (ImActorModelDroidkitActorsThreadPriorityEnum *)valueOfWithNSString:(NSString *)name {
  return ImActorModelDroidkitActorsThreadPriorityEnum_valueOfWithNSString_(name);
}

ImActorModelDroidkitActorsThreadPriorityEnum *ImActorModelDroidkitActorsThreadPriorityEnum_valueOfWithNSString_(NSString *name) {
  ImActorModelDroidkitActorsThreadPriorityEnum_init();
  for (int i = 0; i < 3; i++) {
    ImActorModelDroidkitActorsThreadPriorityEnum *e = ImActorModelDroidkitActorsThreadPriorityEnum_values_[i];
    if ([name isEqual:[e name]]) {
      return e;
    }
  }
  @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:name];
  return nil;
}

- (id)copyWithZone:(NSZone *)zone {
  return self;
}

+ (void)initialize {
  if (self == [ImActorModelDroidkitActorsThreadPriorityEnum class]) {
    ImActorModelDroidkitActorsThreadPriorityEnum_HIGH = [[ImActorModelDroidkitActorsThreadPriorityEnum alloc] initWithNSString:@"HIGH" withInt:0];
    ImActorModelDroidkitActorsThreadPriorityEnum_NORMAL = [[ImActorModelDroidkitActorsThreadPriorityEnum alloc] initWithNSString:@"NORMAL" withInt:1];
    ImActorModelDroidkitActorsThreadPriorityEnum_LOW = [[ImActorModelDroidkitActorsThreadPriorityEnum alloc] initWithNSString:@"LOW" withInt:2];
    J2OBJC_SET_INITIALIZED(ImActorModelDroidkitActorsThreadPriorityEnum)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withInt:", "init", NULL, 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "HIGH", "HIGH", 0x4019, "Lim.actor.model.droidkit.actors.ThreadPriority;", &ImActorModelDroidkitActorsThreadPriorityEnum_HIGH,  },
    { "NORMAL", "NORMAL", 0x4019, "Lim.actor.model.droidkit.actors.ThreadPriority;", &ImActorModelDroidkitActorsThreadPriorityEnum_NORMAL,  },
    { "LOW", "LOW", 0x4019, "Lim.actor.model.droidkit.actors.ThreadPriority;", &ImActorModelDroidkitActorsThreadPriorityEnum_LOW,  },
  };
  static const char *superclass_type_args[] = {"Lim.actor.model.droidkit.actors.ThreadPriority;"};
  static const J2ObjcClassInfo _ImActorModelDroidkitActorsThreadPriorityEnum = { 1, "ThreadPriority", "im.actor.model.droidkit.actors", NULL, 0x4011, 1, methods, 3, fields, 1, superclass_type_args};
  return &_ImActorModelDroidkitActorsThreadPriorityEnum;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelDroidkitActorsThreadPriorityEnum)
