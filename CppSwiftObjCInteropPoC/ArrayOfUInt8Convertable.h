//
//  ArrayOfUInt8Convertable.h
//  CppSwiftObjCInteropPoC
//
//  Created by Luis David Goyes on 12/01/24.
//

#ifndef ArrayOfUInt8Convertable_h
#define ArrayOfUInt8Convertable_h

@protocol ArrayOfUInt8Convertable <NSObject>
- (NSArray<NSNumber*>* _Nonnull) convert;
@end

#endif /* ArrayOfUInt8Convertable_h */
