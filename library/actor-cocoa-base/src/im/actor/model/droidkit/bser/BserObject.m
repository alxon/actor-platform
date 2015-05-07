//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/droidkit/bser/BserObject.java
//


#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/droidkit/bser/DataOutput.h"
#include "java/io/IOException.h"
#include "java/lang/RuntimeException.h"

#pragma clang diagnostic ignored "-Wprotocol"
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation BSBserObject

- (instancetype)init {
  BSBserObject_init(self);
  return self;
}

- (IOSByteArray *)toByteArray {
  BSDataOutput *outputStream = new_BSDataOutput_init();
  BSBserWriter *writer = new_BSBserWriter_initWithBSDataOutput_(outputStream);
  @try {
    [self serializeWithBSBserWriter:writer];
  }
  @catch (JavaIoIOException *e) {
    @throw new_JavaLangRuntimeException_initWithNSString_(@"Unexpected IO exception");
  }
  return [outputStream toByteArray];
}

@end

void BSBserObject_init(BSBserObject *self) {
  (void) NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(BSBserObject)
