//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/org/bouncycastle/crypto/params/ParametersWithSBox.java
//


#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "org/bouncycastle/crypto/CipherParameters.h"
#include "org/bouncycastle/crypto/params/ParametersWithSBox.h"

@interface OrgBouncycastleCryptoParamsParametersWithSBox () {
 @public
  id<OrgBouncycastleCryptoCipherParameters> parameters_;
  IOSByteArray *sBox_;
}

@end

J2OBJC_FIELD_SETTER(OrgBouncycastleCryptoParamsParametersWithSBox, parameters_, id<OrgBouncycastleCryptoCipherParameters>)
J2OBJC_FIELD_SETTER(OrgBouncycastleCryptoParamsParametersWithSBox, sBox_, IOSByteArray *)

@implementation OrgBouncycastleCryptoParamsParametersWithSBox

- (instancetype)initWithOrgBouncycastleCryptoCipherParameters:(id<OrgBouncycastleCryptoCipherParameters>)parameters
                                                withByteArray:(IOSByteArray *)sBox {
  OrgBouncycastleCryptoParamsParametersWithSBox_initWithOrgBouncycastleCryptoCipherParameters_withByteArray_(self, parameters, sBox);
  return self;
}

- (IOSByteArray *)getSBox {
  return sBox_;
}

- (id<OrgBouncycastleCryptoCipherParameters>)getParameters {
  return parameters_;
}

@end

void OrgBouncycastleCryptoParamsParametersWithSBox_initWithOrgBouncycastleCryptoCipherParameters_withByteArray_(OrgBouncycastleCryptoParamsParametersWithSBox *self, id<OrgBouncycastleCryptoCipherParameters> parameters, IOSByteArray *sBox) {
  (void) NSObject_init(self);
  self->parameters_ = parameters;
  self->sBox_ = sBox;
}

OrgBouncycastleCryptoParamsParametersWithSBox *new_OrgBouncycastleCryptoParamsParametersWithSBox_initWithOrgBouncycastleCryptoCipherParameters_withByteArray_(id<OrgBouncycastleCryptoCipherParameters> parameters, IOSByteArray *sBox) {
  OrgBouncycastleCryptoParamsParametersWithSBox *self = [OrgBouncycastleCryptoParamsParametersWithSBox alloc];
  OrgBouncycastleCryptoParamsParametersWithSBox_initWithOrgBouncycastleCryptoCipherParameters_withByteArray_(self, parameters, sBox);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgBouncycastleCryptoParamsParametersWithSBox)
