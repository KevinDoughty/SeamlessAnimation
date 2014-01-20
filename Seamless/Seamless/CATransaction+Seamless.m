/*
 Copyright (c) 2014, Kevin Doughty
 All rights reserved.
 
 Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
 
 1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
 
 2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
 
 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#import "CATransaction+Seamless.h"

@implementation CATransaction (Seamless)

+(void)setSeamlessTimingBlock:(SeamlessTimingBlock)theBlock {
	//objc_setAssociatedObject(self, &kSeamlessTimingBlockKey, theBlock, OBJC_ASSOCIATION_COPY);
    [self setValue:[theBlock copy] forKey:@"seamlessSeamlessTimingBlock"];
}
+(SeamlessTimingBlock)seamlessTimingBlock {
    //return objc_getAssociatedObject(self, &kSeamlessTimingBlockKey);
    return [self valueForKey:@"seamlessSeamlessTimingBlock"];
}
+(void)setSeamlessSteps:(NSUInteger)theSteps {
	//objc_setAssociatedObject(self, &kSeamlessTimingBlockKey, theBlock, OBJC_ASSOCIATION_COPY);
    [self setValue:@(theSteps) forKey:@"seamlessSeamlessSteps"];
}
+(NSUInteger)seamlessSteps {
    //return objc_getAssociatedObject(self, &kSeamlessTimingBlockKey);
    return [[self valueForKey:@"seamlessSeamlessSteps"] unsignedIntegerValue];
}
+(void)setSeamless:(BOOL)theSeamless {
	//objc_setAssociatedObject(self, &kSeamlessTimingBlockKey, theBlock, OBJC_ASSOCIATION_COPY);
    [self setValue:@(theSeamless) forKey:@"seamlessSeamless"];
}
+(BOOL)seamless {
    //return objc_getAssociatedObject(self, &kSeamlessTimingBlockKey);
    return [[self valueForKey:@"seamlessSeamless"] boolValue];
}
@end