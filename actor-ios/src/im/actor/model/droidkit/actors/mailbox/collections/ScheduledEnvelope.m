//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/droidkit/actors/mailbox/collections/ScheduledEnvelope.java
//

#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/actors/mailbox/Envelope.h"
#include "im/actor/model/droidkit/actors/mailbox/collections/ScheduledEnvelope.h"

@interface ImActorModelDroidkitActorsMailboxCollectionsScheduledEnvelope () {
 @public
  jlong key_;
  jlong time_;
  ImActorModelDroidkitActorsMailboxEnvelope *envelope_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelDroidkitActorsMailboxCollectionsScheduledEnvelope, envelope_, ImActorModelDroidkitActorsMailboxEnvelope *)

@implementation ImActorModelDroidkitActorsMailboxCollectionsScheduledEnvelope

- (instancetype)initWithLong:(jlong)key
                    withLong:(jlong)time
withImActorModelDroidkitActorsMailboxEnvelope:(ImActorModelDroidkitActorsMailboxEnvelope *)envelope {
  if (self = [super init]) {
    self->key_ = key;
    self->time_ = time;
    self->envelope_ = envelope;
  }
  return self;
}

- (jlong)getKey {
  return key_;
}

- (jlong)getTime {
  return time_;
}

- (ImActorModelDroidkitActorsMailboxEnvelope *)getEnvelope {
  return envelope_;
}

- (NSString *)description {
  return JreStrcat("C@C", '<', [((ImActorModelDroidkitActorsMailboxEnvelope *) nil_chk(envelope_)) getMessage], '>');
}

- (void)copyAllFieldsTo:(ImActorModelDroidkitActorsMailboxCollectionsScheduledEnvelope *)other {
  [super copyAllFieldsTo:other];
  other->key_ = key_;
  other->time_ = time_;
  other->envelope_ = envelope_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithLong:withLong:withImActorModelDroidkitActorsMailboxEnvelope:", "ScheduledEnvelope", NULL, 0x1, NULL },
    { "getKey", NULL, "J", 0x1, NULL },
    { "getTime", NULL, "J", 0x1, NULL },
    { "getEnvelope", NULL, "Lim.actor.model.droidkit.actors.mailbox.Envelope;", 0x1, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "key_", NULL, 0x2, "J", NULL,  },
    { "time_", NULL, 0x2, "J", NULL,  },
    { "envelope_", NULL, 0x2, "Lim.actor.model.droidkit.actors.mailbox.Envelope;", NULL,  },
  };
  static const J2ObjcClassInfo _ImActorModelDroidkitActorsMailboxCollectionsScheduledEnvelope = { 1, "ScheduledEnvelope", "im.actor.model.droidkit.actors.mailbox.collections", NULL, 0x1, 5, methods, 3, fields, 0, NULL};
  return &_ImActorModelDroidkitActorsMailboxCollectionsScheduledEnvelope;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelDroidkitActorsMailboxCollectionsScheduledEnvelope)
