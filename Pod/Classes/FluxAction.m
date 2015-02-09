//
//  FluxAction.m
//  FluxCocoa
//
//  Created by Yifei Chen on 2/8/15.
//  Copyright (c) 2015 Robin Powered, Inc. All rights reserved.
//

#import "FluxAction.h"

@interface FluxAction ()

@property (nonatomic, strong, readonly) RACSubject *executionSignalSubject;
@property (nonatomic, copy, readonly) FluxActionBlock mapBlock;

@end

@implementation FluxAction

+ (instancetype)action {
    return [self actionWithBlock:nil];
}

+ (instancetype)actionWithBlock:(FluxActionBlock)block {
    return [[self alloc] initWithBlock:block];
}

- (instancetype)initWithBlock:(FluxActionBlock)block
{
    self = [super init];
    if (self) {
        _executionSignalSubject = [RACSubject subject];
        _mapBlock = [block copy];
    }
    return self;
}

- (void)execute:(id)input {
    id output = self.mapBlock ? self.mapBlock(input) : input;
    [self.executionSignalSubject sendNext:output];
}

- (RACSignal *)executionSignal {
    return self.executionSignalSubject;
}

@end
