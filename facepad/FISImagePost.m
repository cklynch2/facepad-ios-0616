//
//  FISImagePost.m
//  facepad
//
//  Created by Flatiron School on 6/24/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import "FISImagePost.h"

@implementation FISImagePost

-(instancetype)init {
    return [self initWithAuthor:@"" image:[UIImage new]];
}

-(instancetype)initWithAuthor:(NSString *)author image:(UIImage *)image {
    self = [super initWithAuthor:author];
    if (self) {
        _image = image;
    }
    return self;
}

-(NSString *)description {
    return @"Image Post";
}

@end
