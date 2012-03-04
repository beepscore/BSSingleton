//
//  BSSingleton.m
//  BSSingleton
//
//  Created by Steve Baker on 3/4/12.
//  Copyright (c) 2012 Beepscore LLC. All rights reserved.
//

#import "BSSingleton.h"

@implementation BSSingleton

// References:
// <http://stackoverflow.com/questions/2199106/thread-safe-instantiation-of-a-singleton>
+ (BSSingleton *)sharedBSSingleton {
    static BSSingleton *bsSingleton = nil;
    static dispatch_once_t pred;
    
    // NOTE:
    // "if the -init of the class being allocated happens to call 
    // the sharedInstance method, it will do so before the variable is set. 
    // In both cases it will lead to a deadlock.
    // This is the one time that you want to separate the alloc and the init."
    // <http://stackoverflow.com/questions/2199106/thread-safe-instantiation-of-a-singleton>
    dispatch_once(&pred, ^{ 
        bsSingleton = [BSSingleton alloc];
        bsSingleton = [bsSingleton init];
    });
    return bsSingleton;
}

@end
