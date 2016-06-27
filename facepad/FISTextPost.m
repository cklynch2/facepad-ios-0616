//
//  FISTextPost.m
//  facepad
//
//  Created by Flatiron School on 6/24/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import "FISTextPost.h"

@implementation FISTextPost

-(instancetype)init {
    return [self initWithAuthor:@"" text:@""];
}

-(instancetype)initWithAuthor:(NSString *)author text:(NSString *)text {
    self = [super initWithAuthor:author];
    if (self) {
        _text = text;
    }
    return self;
}

-(NSString *)description {
    return @"Text Post";
}

@end
