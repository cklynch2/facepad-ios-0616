//
//  FISFeedPost.h
//  facepad
//
//  Created by Flatiron School on 6/24/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISFeedPost : NSObject
@property (strong, nonatomic) NSString *author;
@property (strong, nonatomic) NSDate *publishDate;

-(instancetype)initWithAuthor:(NSString *)author;
-(NSString *)postType:(FISFeedPost *)post;

@end
