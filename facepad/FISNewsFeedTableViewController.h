//
//  FISUserDetailTableViewController.h
//  facepad
//
//  Created by Flatiron School on 6/24/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FISUser.h"
#import "FISFeedPost.h"
#import "FISImagePost.h"
#import "FISTextPost.h"
#import "FISCoverImageTableViewCell.h"
#import "FISImagePostTableViewCell.h"
#import "FISTextTableViewCell.h"

@interface FISNewsFeedTableViewController : UITableViewController
@property (strong, nonnull) FISUser *user;

@end
