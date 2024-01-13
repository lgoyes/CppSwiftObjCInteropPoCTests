//
//  DataToArrayOfUInt8SwiftBridge.h
//  CppSwiftObjCInteropPoC
//
//  Created by Luis David Goyes on 12/01/24.
//

#import <Foundation/Foundation.h>
#import "ArrayOfUInt8Convertable.h"

NS_ASSUME_NONNULL_BEGIN

@interface DataToArrayOfUInt8SwiftBridge : NSObject <ArrayOfUInt8Convertable>
- (instancetype) initWithData: (NSData*) data;
@end

NS_ASSUME_NONNULL_END
