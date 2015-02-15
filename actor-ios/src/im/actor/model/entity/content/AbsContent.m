//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/entity/content/AbsContent.java
//

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/bser/BserParser.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/droidkit/bser/util/SparseArray.h"
#include "im/actor/model/entity/content/AbsContent.h"
#include "im/actor/model/entity/content/DocumentContent.h"
#include "im/actor/model/entity/content/PhotoContent.h"
#include "im/actor/model/entity/content/ServiceContent.h"
#include "im/actor/model/entity/content/ServiceGroupAvatarChanged.h"
#include "im/actor/model/entity/content/ServiceGroupCreated.h"
#include "im/actor/model/entity/content/ServiceGroupTitleChanged.h"
#include "im/actor/model/entity/content/ServiceGroupUserAdded.h"
#include "im/actor/model/entity/content/ServiceGroupUserKicked.h"
#include "im/actor/model/entity/content/ServiceGroupUserLeave.h"
#include "im/actor/model/entity/content/ServiceUserRegistered.h"
#include "im/actor/model/entity/content/TextContent.h"
#include "im/actor/model/entity/content/VideoContent.h"
#include "im/actor/model/util/DataInput.h"
#include "java/io/IOException.h"
#include "java/lang/IllegalArgumentException.h"

@implementation ImActorModelEntityContentAbsContent

+ (ImActorModelEntityContentAbsContent *)contentFromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelEntityContentAbsContent_contentFromBytesWithByteArray_(data);
}

- (void)parseWithImActorModelDroidkitBserBserValues:(ImActorModelDroidkitBserBserValues *)values {
}

- (void)serializeWithImActorModelDroidkitBserBserWriter:(ImActorModelDroidkitBserBserWriter *)writer {
  [((ImActorModelDroidkitBserBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:[((ImActorModelEntityContentAbsContent_ContentTypeEnum *) nil_chk([self getContentType])) getValue]];
}

+ (ImActorModelEntityContentAbsContent_ContentTypeEnum *)typeFromValueWithInt:(jint)val {
  return ImActorModelEntityContentAbsContent_typeFromValueWithInt_(val);
}

- (ImActorModelEntityContentAbsContent_ContentTypeEnum *)getContentType {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (instancetype)init {
  return [super init];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "contentFromBytesWithByteArray:", "contentFromBytes", "Lim.actor.model.entity.content.AbsContent;", 0x9, "Ljava.io.IOException;" },
    { "parseWithImActorModelDroidkitBserBserValues:", "parse", "V", 0x1, "Ljava.io.IOException;" },
    { "serializeWithImActorModelDroidkitBserBserWriter:", "serialize", "V", 0x1, "Ljava.io.IOException;" },
    { "typeFromValueWithInt:", "typeFromValue", "Lim.actor.model.entity.content.AbsContent$ContentType;", 0xc, NULL },
    { "getContentType", NULL, "Lim.actor.model.entity.content.AbsContent$ContentType;", 0x404, NULL },
    { "init", NULL, NULL, 0x1, NULL },
  };
  static const J2ObjcClassInfo _ImActorModelEntityContentAbsContent = { 1, "AbsContent", "im.actor.model.entity.content", NULL, 0x401, 6, methods, 0, NULL, 0, NULL};
  return &_ImActorModelEntityContentAbsContent;
}

@end

ImActorModelEntityContentAbsContent *ImActorModelEntityContentAbsContent_contentFromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelEntityContentAbsContent_init();
  ImActorModelDroidkitBserBserValues *reader = [[ImActorModelDroidkitBserBserValues alloc] initWithImActorModelDroidkitBserUtilSparseArray:ImActorModelDroidkitBserBserParser_deserializeWithAMDataInput_([[AMDataInput alloc] initWithByteArray:data withInt:0 withInt:((IOSByteArray *) nil_chk(data))->size_])];
  ImActorModelEntityContentAbsContent_ContentTypeEnum *type = ImActorModelEntityContentAbsContent_typeFromValueWithInt_([reader getIntWithInt:1]);
  switch ([type ordinal]) {
    case ImActorModelEntityContentAbsContent_ContentType_TEXT:
    return ImActorModelEntityContentTextContent_textFromBytesWithByteArray_(data);
    case ImActorModelEntityContentAbsContent_ContentType_DOCUMENT:
    return ImActorModelEntityContentDocumentContent_docFromBytesWithByteArray_(data);
    case ImActorModelEntityContentAbsContent_ContentType_DOCUMENT_PHOTO:
    return ImActorModelEntityContentPhotoContent_photoFromBytesWithByteArray_(data);
    case ImActorModelEntityContentAbsContent_ContentType_DOCUMENT_VIDEO:
    return ImActorModelEntityContentVideoContent_videoFromBytesWithByteArray_(data);
    case ImActorModelEntityContentAbsContent_ContentType_SERVICE:
    return ImActorModelEntityContentServiceContent_serviceFromBytesWithByteArray_(data);
    case ImActorModelEntityContentAbsContent_ContentType_SERVICE_REGISTERED:
    return ImActorModelEntityContentServiceUserRegistered_fromBytesWithByteArray_(data);
    case ImActorModelEntityContentAbsContent_ContentType_SERVICE_CREATED:
    return ImActorModelEntityContentServiceGroupCreated_fromBytesWithByteArray_(data);
    case ImActorModelEntityContentAbsContent_ContentType_SERVICE_TITLE:
    return ImActorModelEntityContentServiceGroupTitleChanged_fromBytesWithByteArray_(data);
    case ImActorModelEntityContentAbsContent_ContentType_SERVICE_AVATAR:
    return ImActorModelEntityContentServiceGroupAvatarChanged_fromBytesWithByteArray_(data);
    case ImActorModelEntityContentAbsContent_ContentType_SERVICE_ADDED:
    return ImActorModelEntityContentServiceGroupUserAdded_fromBytesWithByteArray_(data);
    case ImActorModelEntityContentAbsContent_ContentType_SERVICE_KICKED:
    return ImActorModelEntityContentServiceGroupUserKicked_fromBytesWithByteArray_(data);
    case ImActorModelEntityContentAbsContent_ContentType_SERVICE_LEAVE:
    return ImActorModelEntityContentServiceGroupUserLeave_fromBytesWithByteArray_(data);
    default:
    @throw [[JavaIoIOException alloc] initWithNSString:@"Unknown type"];
  }
}

ImActorModelEntityContentAbsContent_ContentTypeEnum *ImActorModelEntityContentAbsContent_typeFromValueWithInt_(jint val) {
  ImActorModelEntityContentAbsContent_init();
  switch (val) {
    default:
    case 1:
    return ImActorModelEntityContentAbsContent_ContentTypeEnum_get_TEXT();
    case 2:
    return ImActorModelEntityContentAbsContent_ContentTypeEnum_get_DOCUMENT();
    case 3:
    return ImActorModelEntityContentAbsContent_ContentTypeEnum_get_DOCUMENT_PHOTO();
    case 4:
    return ImActorModelEntityContentAbsContent_ContentTypeEnum_get_DOCUMENT_VIDEO();
    case 5:
    return ImActorModelEntityContentAbsContent_ContentTypeEnum_get_SERVICE();
    case 6:
    return ImActorModelEntityContentAbsContent_ContentTypeEnum_get_SERVICE_CREATED();
    case 7:
    return ImActorModelEntityContentAbsContent_ContentTypeEnum_get_SERVICE_AVATAR();
    case 8:
    return ImActorModelEntityContentAbsContent_ContentTypeEnum_get_SERVICE_TITLE();
    case 9:
    return ImActorModelEntityContentAbsContent_ContentTypeEnum_get_SERVICE_ADDED();
    case 10:
    return ImActorModelEntityContentAbsContent_ContentTypeEnum_get_SERVICE_KICKED();
    case 11:
    return ImActorModelEntityContentAbsContent_ContentTypeEnum_get_SERVICE_LEAVE();
    case 12:
    return ImActorModelEntityContentAbsContent_ContentTypeEnum_get_SERVICE_REGISTERED();
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelEntityContentAbsContent)

BOOL ImActorModelEntityContentAbsContent_ContentTypeEnum_initialized = NO;

ImActorModelEntityContentAbsContent_ContentTypeEnum *ImActorModelEntityContentAbsContent_ContentTypeEnum_values_[12];

@implementation ImActorModelEntityContentAbsContent_ContentTypeEnum

- (instancetype)initWithInt:(jint)value
               withNSString:(NSString *)__name
                    withInt:(jint)__ordinal {
  if (self = [super initWithNSString:__name withInt:__ordinal]) {
    self->value_ = value;
  }
  return self;
}

- (jint)getValue {
  return value_;
}

IOSObjectArray *ImActorModelEntityContentAbsContent_ContentTypeEnum_values() {
  ImActorModelEntityContentAbsContent_ContentTypeEnum_init();
  return [IOSObjectArray arrayWithObjects:ImActorModelEntityContentAbsContent_ContentTypeEnum_values_ count:12 type:ImActorModelEntityContentAbsContent_ContentTypeEnum_class_()];
}
+ (IOSObjectArray *)values {
  return ImActorModelEntityContentAbsContent_ContentTypeEnum_values();
}

+ (ImActorModelEntityContentAbsContent_ContentTypeEnum *)valueOfWithNSString:(NSString *)name {
  return ImActorModelEntityContentAbsContent_ContentTypeEnum_valueOfWithNSString_(name);
}

ImActorModelEntityContentAbsContent_ContentTypeEnum *ImActorModelEntityContentAbsContent_ContentTypeEnum_valueOfWithNSString_(NSString *name) {
  ImActorModelEntityContentAbsContent_ContentTypeEnum_init();
  for (int i = 0; i < 12; i++) {
    ImActorModelEntityContentAbsContent_ContentTypeEnum *e = ImActorModelEntityContentAbsContent_ContentTypeEnum_values_[i];
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
  if (self == [ImActorModelEntityContentAbsContent_ContentTypeEnum class]) {
    ImActorModelEntityContentAbsContent_ContentTypeEnum_TEXT = [[ImActorModelEntityContentAbsContent_ContentTypeEnum alloc] initWithInt:1 withNSString:@"TEXT" withInt:0];
    ImActorModelEntityContentAbsContent_ContentTypeEnum_DOCUMENT = [[ImActorModelEntityContentAbsContent_ContentTypeEnum alloc] initWithInt:2 withNSString:@"DOCUMENT" withInt:1];
    ImActorModelEntityContentAbsContent_ContentTypeEnum_DOCUMENT_PHOTO = [[ImActorModelEntityContentAbsContent_ContentTypeEnum alloc] initWithInt:3 withNSString:@"DOCUMENT_PHOTO" withInt:2];
    ImActorModelEntityContentAbsContent_ContentTypeEnum_DOCUMENT_VIDEO = [[ImActorModelEntityContentAbsContent_ContentTypeEnum alloc] initWithInt:4 withNSString:@"DOCUMENT_VIDEO" withInt:3];
    ImActorModelEntityContentAbsContent_ContentTypeEnum_SERVICE = [[ImActorModelEntityContentAbsContent_ContentTypeEnum alloc] initWithInt:5 withNSString:@"SERVICE" withInt:4];
    ImActorModelEntityContentAbsContent_ContentTypeEnum_SERVICE_CREATED = [[ImActorModelEntityContentAbsContent_ContentTypeEnum alloc] initWithInt:6 withNSString:@"SERVICE_CREATED" withInt:5];
    ImActorModelEntityContentAbsContent_ContentTypeEnum_SERVICE_AVATAR = [[ImActorModelEntityContentAbsContent_ContentTypeEnum alloc] initWithInt:7 withNSString:@"SERVICE_AVATAR" withInt:6];
    ImActorModelEntityContentAbsContent_ContentTypeEnum_SERVICE_TITLE = [[ImActorModelEntityContentAbsContent_ContentTypeEnum alloc] initWithInt:8 withNSString:@"SERVICE_TITLE" withInt:7];
    ImActorModelEntityContentAbsContent_ContentTypeEnum_SERVICE_ADDED = [[ImActorModelEntityContentAbsContent_ContentTypeEnum alloc] initWithInt:9 withNSString:@"SERVICE_ADDED" withInt:8];
    ImActorModelEntityContentAbsContent_ContentTypeEnum_SERVICE_KICKED = [[ImActorModelEntityContentAbsContent_ContentTypeEnum alloc] initWithInt:10 withNSString:@"SERVICE_KICKED" withInt:9];
    ImActorModelEntityContentAbsContent_ContentTypeEnum_SERVICE_LEAVE = [[ImActorModelEntityContentAbsContent_ContentTypeEnum alloc] initWithInt:11 withNSString:@"SERVICE_LEAVE" withInt:10];
    ImActorModelEntityContentAbsContent_ContentTypeEnum_SERVICE_REGISTERED = [[ImActorModelEntityContentAbsContent_ContentTypeEnum alloc] initWithInt:12 withNSString:@"SERVICE_REGISTERED" withInt:11];
    J2OBJC_SET_INITIALIZED(ImActorModelEntityContentAbsContent_ContentTypeEnum)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withNSString:withInt:", "ContentType", NULL, 0x2, NULL },
    { "getValue", NULL, "I", 0x1, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "TEXT", "TEXT", 0x4019, "Lim.actor.model.entity.content.AbsContent$ContentType;", &ImActorModelEntityContentAbsContent_ContentTypeEnum_TEXT,  },
    { "DOCUMENT", "DOCUMENT", 0x4019, "Lim.actor.model.entity.content.AbsContent$ContentType;", &ImActorModelEntityContentAbsContent_ContentTypeEnum_DOCUMENT,  },
    { "DOCUMENT_PHOTO", "DOCUMENT_PHOTO", 0x4019, "Lim.actor.model.entity.content.AbsContent$ContentType;", &ImActorModelEntityContentAbsContent_ContentTypeEnum_DOCUMENT_PHOTO,  },
    { "DOCUMENT_VIDEO", "DOCUMENT_VIDEO", 0x4019, "Lim.actor.model.entity.content.AbsContent$ContentType;", &ImActorModelEntityContentAbsContent_ContentTypeEnum_DOCUMENT_VIDEO,  },
    { "SERVICE", "SERVICE", 0x4019, "Lim.actor.model.entity.content.AbsContent$ContentType;", &ImActorModelEntityContentAbsContent_ContentTypeEnum_SERVICE,  },
    { "SERVICE_CREATED", "SERVICE_CREATED", 0x4019, "Lim.actor.model.entity.content.AbsContent$ContentType;", &ImActorModelEntityContentAbsContent_ContentTypeEnum_SERVICE_CREATED,  },
    { "SERVICE_AVATAR", "SERVICE_AVATAR", 0x4019, "Lim.actor.model.entity.content.AbsContent$ContentType;", &ImActorModelEntityContentAbsContent_ContentTypeEnum_SERVICE_AVATAR,  },
    { "SERVICE_TITLE", "SERVICE_TITLE", 0x4019, "Lim.actor.model.entity.content.AbsContent$ContentType;", &ImActorModelEntityContentAbsContent_ContentTypeEnum_SERVICE_TITLE,  },
    { "SERVICE_ADDED", "SERVICE_ADDED", 0x4019, "Lim.actor.model.entity.content.AbsContent$ContentType;", &ImActorModelEntityContentAbsContent_ContentTypeEnum_SERVICE_ADDED,  },
    { "SERVICE_KICKED", "SERVICE_KICKED", 0x4019, "Lim.actor.model.entity.content.AbsContent$ContentType;", &ImActorModelEntityContentAbsContent_ContentTypeEnum_SERVICE_KICKED,  },
    { "SERVICE_LEAVE", "SERVICE_LEAVE", 0x4019, "Lim.actor.model.entity.content.AbsContent$ContentType;", &ImActorModelEntityContentAbsContent_ContentTypeEnum_SERVICE_LEAVE,  },
    { "SERVICE_REGISTERED", "SERVICE_REGISTERED", 0x4019, "Lim.actor.model.entity.content.AbsContent$ContentType;", &ImActorModelEntityContentAbsContent_ContentTypeEnum_SERVICE_REGISTERED,  },
    { "value_", NULL, 0x0, "I", NULL,  },
  };
  static const char *superclass_type_args[] = {"Lim.actor.model.entity.content.AbsContent$ContentType;"};
  static const J2ObjcClassInfo _ImActorModelEntityContentAbsContent_ContentTypeEnum = { 1, "ContentType", "im.actor.model.entity.content", "AbsContent", 0x401c, 2, methods, 13, fields, 1, superclass_type_args};
  return &_ImActorModelEntityContentAbsContent_ContentTypeEnum;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelEntityContentAbsContent_ContentTypeEnum)
