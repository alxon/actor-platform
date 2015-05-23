//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/updates/MessagesProcessor.java
//

#ifndef _ImActorModelModulesUpdatesMessagesProcessor_H_
#define _ImActorModelModulesUpdatesMessagesProcessor_H_

#include "J2ObjC_header.h"
#include "im/actor/model/modules/BaseModule.h"

@class AMPeer;
@class APMessage;
@class APPeer;
@class APResponseLoadDialogs;
@class APResponseLoadHistory;
@class IOSByteArray;
@class ImActorModelModulesModules;
@protocol JavaUtilList;

@interface ImActorModelModulesUpdatesMessagesProcessor : ImActorModelModulesBaseModule

#pragma mark Public

- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)messenger;

- (void)onChatClearWithAPPeer:(APPeer *)_peer;

- (void)onChatDeleteWithAPPeer:(APPeer *)_peer;

- (void)onDialogsLoadedWithAPResponseLoadDialogs:(APResponseLoadDialogs *)dialogsResponse;

- (void)onMessageWithAPPeer:(APPeer *)_peer
                    withInt:(jint)senderUid
                   withLong:(jlong)date
                   withLong:(jlong)rid
              withAPMessage:(APMessage *)content;

- (void)onMessageDeleteWithAPPeer:(APPeer *)_peer
                 withJavaUtilList:(id<JavaUtilList>)rids;

- (void)onMessageEncryptedReadWithAPPeer:(APPeer *)_peer
                                withLong:(jlong)rid
                                withLong:(jlong)readDate;

- (void)onMessageEncryptedReadByMeWithAPPeer:(APPeer *)_peer
                                    withLong:(jlong)rid;

- (void)onMessageEncryptedReceivedWithAPPeer:(APPeer *)_peer
                                    withLong:(jlong)rid
                                    withLong:(jlong)receivedDate;

- (void)onMessageReadWithAPPeer:(APPeer *)_peer
                       withLong:(jlong)startDate
                       withLong:(jlong)readDate;

- (void)onMessageReadByMeWithAPPeer:(APPeer *)_peer
                           withLong:(jlong)startDate;

- (void)onMessageReceivedWithAPPeer:(APPeer *)_peer
                           withLong:(jlong)startDate
                           withLong:(jlong)receivedDate;

- (void)onMessageSentWithAPPeer:(APPeer *)_peer
                       withLong:(jlong)rid
                       withLong:(jlong)date;

- (void)onMessagesLoadedWithAMPeer:(AMPeer *)peer
         withAPResponseLoadHistory:(APResponseLoadHistory *)historyResponse;

- (void)onUserRegisteredWithInt:(jint)uid
                       withLong:(jlong)date;

+ (jint)readIntWithByteArray:(IOSByteArray *)bytes
                     withInt:(jint)offset;

+ (IOSByteArray *)substringWithByteArray:(IOSByteArray *)src
                                 withInt:(jint)start
                                 withInt:(jint)len;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelModulesUpdatesMessagesProcessor)

FOUNDATION_EXPORT void ImActorModelModulesUpdatesMessagesProcessor_initWithImActorModelModulesModules_(ImActorModelModulesUpdatesMessagesProcessor *self, ImActorModelModulesModules *messenger);

FOUNDATION_EXPORT ImActorModelModulesUpdatesMessagesProcessor *new_ImActorModelModulesUpdatesMessagesProcessor_initWithImActorModelModulesModules_(ImActorModelModulesModules *messenger) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT jint ImActorModelModulesUpdatesMessagesProcessor_readIntWithByteArray_withInt_(IOSByteArray *bytes, jint offset);

FOUNDATION_EXPORT IOSByteArray *ImActorModelModulesUpdatesMessagesProcessor_substringWithByteArray_withInt_withInt_(IOSByteArray *src, jint start, jint len);

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelModulesUpdatesMessagesProcessor)

#endif // _ImActorModelModulesUpdatesMessagesProcessor_H_
