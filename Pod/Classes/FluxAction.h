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

/**
 *  Inspired by Flux action from Facebook.
 *  Action can be created by +action or +actionWithBlock:
 *  If action is created by +action, whenever 'execute:' is called, 'executionSignal' will send a next with value 'input'.
 *  +actionWithBlock: allows you to provide a block. 'executionSignal' will send whatever returned by the block.
 */
@interface FluxAction : NSObject

+ (instancetype)action;
+ (instancetype)replayLastAction;
+ (instancetype)actionWithBlock:(FluxActionBlock)block;

@property (nonatomic, readonly) RACSignal *executionSignal;

- (void)execute:(id)input;

@end
