//
//  FISTextPost.h
//  facepad
//
//  Created by Flatiron School on 6/24/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FISFeedPost.h"

@interface FISTextPost : FISFeedPost
@property (strong, nonatomic) NSString *text;

-(instancetype)initWithAuthor:(NSString *)author text:(NSString *)text;

@end
