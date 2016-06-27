//
//  FISUser.m
//  facepad
//
//  Created by Flatiron School on 6/24/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import "FISUser.h"

@implementation FISUser

-(instancetype)init {
    return [self initWithUsername:@"" profilePicture:[UIImage new] coverImage:[UIImage new]];
}

-(instancetype)initWithUsername:(NSString *)username profilePicture:(UIImage *)profilePicture coverImage:(UIImage *)coverImage {
    self = [super init];
    if (self) {
        _username = username;
        _profilePicture = profilePicture;
        _coverImage = coverImage;
        _posts = [NSMutableArray new];
    }
    return self;
}

@end
