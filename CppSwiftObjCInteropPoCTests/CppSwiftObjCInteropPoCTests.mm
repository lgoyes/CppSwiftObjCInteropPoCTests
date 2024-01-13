//
//  CppSwiftObjCInteropPoCTests.m
//  CppSwiftObjCInteropPoCTests
//
//  Created by Luis David Goyes on 12/01/24.
//

#import <XCTest/XCTest.h>
#import "DataToArrayOfUInt8SwiftBridge.h"
#import "DataToArrayOfUInt8Cpp.h"

@interface CppSwiftObjCInteropPoCTests : XCTestCase

@end

@implementation CppSwiftObjCInteropPoCTests

- (void)test_comparingoutputlengths {
    NSString* someString = @"asdf123";
    NSData* inputData = [someString dataUsingEncoding:NSUTF8StringEncoding];
    NSArray* swiftOutput = [[[DataToArrayOfUInt8SwiftBridge alloc] initWithData:inputData] convert];
    NSArray* cppOutput = [[[DataToArrayOfUInt8Cpp alloc] initWithData:inputData] convert];
    
    XCTAssertEqual([swiftOutput count], [cppOutput count]);
}

- (void)test_comparingoutputValues {
    NSString* someString = @"asdf123";
    NSData* inputData = [someString dataUsingEncoding:NSUTF8StringEncoding];
    NSArray* swiftOutput = [[[DataToArrayOfUInt8SwiftBridge alloc] initWithData:inputData] convert];
    NSArray* cppOutput = [[[DataToArrayOfUInt8Cpp alloc] initWithData:inputData] convert];
    
    unsigned long minLength = MIN([swiftOutput count], [cppOutput count]);
    
    unsigned long equalValues = 0;
    for (unsigned long i = 0; i < minLength; i++) {
        uint8_t swiftValue = [swiftOutput[i] charValue];
        uint8_t cppValue = [cppOutput[i] charValue];
        if ( swiftValue == cppValue ) {
            equalValues += 1;
        }
    }
    
    XCTAssertEqual(minLength, equalValues);
}


@end
