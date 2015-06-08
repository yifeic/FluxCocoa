//
//  FluxAction.h
//  FluxCocoa
//
//  Created by Yifei Chen on 2/8/15.
//  Copyright (c) 2015 Robin Powered, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ReactiveCocoa.h"

typedef id(^FluxActionBlock)(id input);

@interface FluxAction : NSObject

+ (instancetype)action;
+ (instancetype)replayLastAction;
+ (instancetype)actionWithBlock:(FluxActionBlock)block;

@property (nonatomic, readonly) RACSignal *executionSignal;

- (void)execute:(id)input;

@end
