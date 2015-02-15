//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/droidkit/actors/mailbox/MailboxesQueue.java
//

#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/actors/dispatch/AbstractDispatchQueue.h"
#include "im/actor/model/droidkit/actors/dispatch/DispatchResult.h"
#include "im/actor/model/droidkit/actors/mailbox/Envelope.h"
#include "im/actor/model/droidkit/actors/mailbox/Mailbox.h"
#include "im/actor/model/droidkit/actors/mailbox/MailboxesQueue.h"
#include "im/actor/model/droidkit/actors/mailbox/collections/EnvelopeCollection.h"
#include "im/actor/model/droidkit/actors/mailbox/collections/EnvelopeRoot.h"

@interface ImActorModelDroidkitActorsMailboxMailboxesQueue () {
 @public
  ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot *envelopeRoot_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelDroidkitActorsMailboxMailboxesQueue, envelopeRoot_, ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot *)

@implementation ImActorModelDroidkitActorsMailboxMailboxesQueue

- (instancetype)init {
  if (self = [super init]) {
    envelopeRoot_ = [[ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot alloc] initWithImActorModelDroidkitActorsMailboxMailboxesQueue:self];
  }
  return self;
}

- (ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot *)getEnvelopeRoot {
  return envelopeRoot_;
}

- (void)unlockMailboxWithImActorModelDroidkitActorsMailboxMailbox:(ImActorModelDroidkitActorsMailboxMailbox *)mailbox {
  [((ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot *) nil_chk(envelopeRoot_)) attachCollectionWithImActorModelDroidkitActorsMailboxCollectionsEnvelopeCollection:[((ImActorModelDroidkitActorsMailboxMailbox *) nil_chk(mailbox)) getEnvelopes]];
}

- (void)disconnectMailboxWithImActorModelDroidkitActorsMailboxMailbox:(ImActorModelDroidkitActorsMailboxMailbox *)mailbox {
  [((ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot *) nil_chk(envelopeRoot_)) detachCollectionWithImActorModelDroidkitActorsMailboxCollectionsEnvelopeCollection:[((ImActorModelDroidkitActorsMailboxMailbox *) nil_chk(mailbox)) getEnvelopes]];
}

- (void)notifyQueueChanged {
  [super notifyQueueChanged];
}

- (ImActorModelDroidkitActorsDispatchDispatchResult *)dispatchWithLong:(jlong)time {
  ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult *res = [((ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot *) nil_chk(envelopeRoot_)) fetchCollectionWithLong:time];
  if (res == nil) {
    return [self delayWithLong:ImActorModelDroidkitActorsDispatchAbstractDispatchQueue_FOREVER];
  }
  if ([((ImActorModelDroidkitActorsMailboxCollectionsEnvelopeRoot_FetchResult *) nil_chk(res)) getEnvelope] != nil) {
    ImActorModelDroidkitActorsDispatchDispatchResult *result = [self resultWithId:[res getEnvelope]];
    [res recycle];
    return result;
  }
  else {
    ImActorModelDroidkitActorsDispatchDispatchResult *result = [self delayWithLong:[res getDelay]];
    [res recycle];
    return result;
  }
}

- (void)copyAllFieldsTo:(ImActorModelDroidkitActorsMailboxMailboxesQueue *)other {
  [super copyAllFieldsTo:other];
  other->envelopeRoot_ = envelopeRoot_;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "MailboxesQueue", NULL, 0x1, NULL },
    { "getEnvelopeRoot", NULL, "Lim.actor.model.droidkit.actors.mailbox.collections.EnvelopeRoot;", 0x1, NULL },
    { "unlockMailboxWithImActorModelDroidkitActorsMailboxMailbox:", "unlockMailbox", "V", 0x1, NULL },
    { "disconnectMailboxWithImActorModelDroidkitActorsMailboxMailbox:", "disconnectMailbox", "V", 0x1, NULL },
    { "notifyQueueChanged", NULL, "V", 0x1, NULL },
    { "dispatchWithLong:", "dispatch", "Lim.actor.model.droidkit.actors.dispatch.DispatchResult;", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "envelopeRoot_", NULL, 0x2, "Lim.actor.model.droidkit.actors.mailbox.collections.EnvelopeRoot;", NULL,  },
  };
  static const char *superclass_type_args[] = {"Lim.actor.model.droidkit.actors.mailbox.Envelope;"};
  static const J2ObjcClassInfo _ImActorModelDroidkitActorsMailboxMailboxesQueue = { 1, "MailboxesQueue", "im.actor.model.droidkit.actors.mailbox", NULL, 0x1, 6, methods, 1, fields, 1, superclass_type_args};
  return &_ImActorModelDroidkitActorsMailboxMailboxesQueue;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelDroidkitActorsMailboxMailboxesQueue)
