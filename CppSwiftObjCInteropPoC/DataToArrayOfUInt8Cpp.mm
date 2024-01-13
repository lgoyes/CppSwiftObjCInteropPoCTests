//
//  DataToArrayOfUInt8.m
//  CppSwiftObjCInteropPoC
//
//  Created by Luis David Goyes on 12/01/24.
//

#import "DataToArrayOfUInt8Cpp.h"

@interface DataToArrayOfUInt8Cpp ()
@property (nonatomic, strong) NSData* data;
@end

@implementation DataToArrayOfUInt8Cpp
- (instancetype)initWithData:(NSData *)data {
    self = [super init];
    if (self) {
        _data = data;
    }
    return self;
}

- (NSArray<NSNumber *> *)convert {

    const void *bytes = [self.data bytes];
    NSUInteger length = [self.data length];

    uint8_t *byteArray = (uint8_t *)malloc(length);
    memcpy(byteArray, bytes, length);

    NSMutableArray* result = [@[] mutableCopy];
    
    for (NSUInteger i = 0; i < length; i++) {
        [result addObject:@(byteArray[i])];
    }

    return result;
}

@end
