//
//  DataToArrayOfUInt8SwiftBridge.m
//  CppSwiftObjCInteropPoC
//
//  Created by Luis David Goyes on 12/01/24.
//

#import "DataToArrayOfUInt8SwiftBridge.h"
#import "CppSwiftObjCInteropPoC-Swift.h"

@interface DataToArrayOfUInt8SwiftBridge ()
@property (nonatomic, strong) DataToArrayOfUInt8Swift* converter;
@end

@implementation DataToArrayOfUInt8SwiftBridge
- (instancetype)initWithData:(NSData *)data {
    self = [super init];
    if (self) {
        _converter = [[DataToArrayOfUInt8Swift alloc] initWithData: data];
    }
    return self;
}

- (NSArray<NSNumber *> * _Nonnull)convert {
    return [_converter convertDataToArrayOfUInt8];
}
@end
