//
//  FISFeedPost.m
//  facepad
//
//  Created by Flatiron School on 6/24/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import "FISFeedPost.h"

@implementation FISFeedPost

-(instancetype)init {
    return [self initWithAuthor:@""];
}

-(instancetype)initWithAuthor:(NSString *)author {
    self = [super init];
    if (self) {
        _author = author;
        _publishDate = [NSDate date];
    }
    return self;
}

-(NSString *)postType:(FISFeedPost *)post {
    NSString *postType = @"";
    if ([post.description isEqualToString:@"Image Post"]) {
        [postType stringByAppendingString:@"Image"];
    } else if ([post.description isEqualToString:@"Text Post"]) {
        [postType stringByAppendingString:@"Text"];
    }
    return postType;
}

@end
