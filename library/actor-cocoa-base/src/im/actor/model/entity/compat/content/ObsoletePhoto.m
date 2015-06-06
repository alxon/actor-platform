//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/entity/compat/content/ObsoletePhoto.java
//


#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/DocumentExPhoto.h"
#include "im/actor/model/api/DocumentMessage.h"
#include "im/actor/model/api/FastThumb.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/entity/compat/ObsoleteFileReference.h"
#include "im/actor/model/entity/compat/content/ObsoleteDocument.h"
#include "im/actor/model/entity/compat/content/ObsoleteFastThumb.h"
#include "im/actor/model/entity/compat/content/ObsoleteFileSource.h"
#include "im/actor/model/entity/compat/content/ObsoleteLocalFileSource.h"
#include "im/actor/model/entity/compat/content/ObsoletePhoto.h"
#include "im/actor/model/entity/compat/content/ObsoleteRemoteFileSource.h"
#include "im/actor/model/entity/content/internal/AbsContentContainer.h"
#include "im/actor/model/entity/content/internal/ContentLocalContainer.h"
#include "im/actor/model/entity/content/internal/ContentRemoteContainer.h"
#include "im/actor/model/entity/content/internal/LocalFastThumb.h"
#include "im/actor/model/entity/content/internal/LocalPhoto.h"
#include "java/io/IOException.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/UnsupportedOperationException.h"

@interface ImActorModelEntityCompatContentObsoletePhoto () {
 @public
  jint w_;
  jint h_;
}

@end

@implementation ImActorModelEntityCompatContentObsoletePhoto

- (instancetype)initWithBSBserValues:(BSBserValues *)values {
  ImActorModelEntityCompatContentObsoletePhoto_initWithBSBserValues_(self, values);
  return self;
}

- (jint)getW {
  return w_;
}

- (jint)getH {
  return h_;
}

- (ImActorModelEntityContentInternalAbsContentContainer *)toContainer {
  if ([source_ isKindOfClass:[ImActorModelEntityCompatContentObsoleteLocalFileSource class]]) {
    ImActorModelEntityCompatContentObsoleteLocalFileSource *fSource = (ImActorModelEntityCompatContentObsoleteLocalFileSource *) check_class_cast(source_, [ImActorModelEntityCompatContentObsoleteLocalFileSource class]);
    return new_ImActorModelEntityContentInternalContentLocalContainer_initWithImActorModelEntityContentInternalAbsLocalContent_(new_ImActorModelEntityContentInternalLocalPhoto_initWithNSString_withNSString_withInt_withNSString_withImActorModelEntityContentInternalLocalFastThumb_withInt_withInt_(name_, [((ImActorModelEntityCompatContentObsoleteLocalFileSource *) nil_chk(fSource)) getFileDescriptor], [fSource getSize], mimeType_, fastThumb_ != nil ? [fastThumb_ toFastThumb] : nil, w_, h_));
  }
  else if ([source_ isKindOfClass:[ImActorModelEntityCompatContentObsoleteRemoteFileSource class]]) {
    ImActorModelEntityCompatContentObsoleteRemoteFileSource *fSource = (ImActorModelEntityCompatContentObsoleteRemoteFileSource *) check_class_cast(source_, [ImActorModelEntityCompatContentObsoleteRemoteFileSource class]);
    return new_ImActorModelEntityContentInternalContentRemoteContainer_initWithAPMessage_(new_APDocumentMessage_initWithLong_withLong_withInt_withNSString_withNSString_withAPFastThumb_withAPDocumentEx_([((ImActorModelEntityCompatObsoleteFileReference *) nil_chk([((ImActorModelEntityCompatContentObsoleteRemoteFileSource *) nil_chk(fSource)) getFileReference])) getFileId], [((ImActorModelEntityCompatObsoleteFileReference *) nil_chk([fSource getFileReference])) getAccessHash], [((ImActorModelEntityCompatObsoleteFileReference *) nil_chk([fSource getFileReference])) getFileSize], name_, mimeType_, fastThumb_ != nil ? [fastThumb_ toApiFastThumb] : nil, new_APDocumentExPhoto_initWithInt_withInt_(w_, h_)));
  }
  else {
    @throw new_JavaLangRuntimeException_initWithNSString_(@"Unknwon source type");
  }
}

- (void)parseWithBSBserValues:(BSBserValues *)values {
  [super parseWithBSBserValues:values];
  w_ = [((BSBserValues *) nil_chk(values)) getIntWithInt:10];
  h_ = [values getIntWithInt:11];
}

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  @throw new_JavaLangUnsupportedOperationException_init();
}

@end

void ImActorModelEntityCompatContentObsoletePhoto_initWithBSBserValues_(ImActorModelEntityCompatContentObsoletePhoto *self, BSBserValues *values) {
  (void) ImActorModelEntityCompatContentObsoleteDocument_initWithBSBserValues_(self, values);
}

ImActorModelEntityCompatContentObsoletePhoto *new_ImActorModelEntityCompatContentObsoletePhoto_initWithBSBserValues_(BSBserValues *values) {
  ImActorModelEntityCompatContentObsoletePhoto *self = [ImActorModelEntityCompatContentObsoletePhoto alloc];
  ImActorModelEntityCompatContentObsoletePhoto_initWithBSBserValues_(self, values);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelEntityCompatContentObsoletePhoto)
