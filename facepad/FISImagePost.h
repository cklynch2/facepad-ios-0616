//
//  FISImagePost.h
//  facepad
//
//  Created by Flatiron School on 6/24/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FISFeedPost.h"

@interface FISImagePost : FISFeedPost
@property (strong, nonatomic) UIImage *image;

-(instancetype)initWithAuthor:(NSString *)author image:(UIImage *)image;

@end
