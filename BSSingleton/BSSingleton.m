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
// Mike Ash Friday Q&A 2009-09-18 "One Time Initialization"
// <http://www.mikeash.com/pyblog/friday-qa-2009-09-18-intro-to-grand-central-dispatch-part-iv-odds-and-ends.html>
// <http://cocoasamurai.blogspot.com/2011/04/singletons-your-doing-them-wrong.html>

+ (BSSingleton *)sharedBSSingleton {
    static dispatch_once_t pred;
    static BSSingleton *shared = nil;
    
    dispatch_once(&pred, ^{
        shared = [[BSSingleton alloc] init];
    });
    return shared;
}

@end
