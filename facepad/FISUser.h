//
//  FISUser.h
//  facepad
//
//  Created by Flatiron School on 6/24/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISUser : NSObject
@property (strong, nonatomic) NSString *username;
@property (strong, nonatomic) UIImage *profilePicture;
@property (strong, nonatomic) UIImage *coverImage;
@property (strong, nonatomic) NSMutableArray *posts;

-(instancetype)initWithUsername:(NSString *)username profilePicture:(UIImage *)profilePicture coverImage:(UIImage *)coverImage;

@end
