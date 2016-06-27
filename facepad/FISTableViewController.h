//
//  FISTableViewController.h
//  facepad
//
//  Created by Flatiron School on 6/24/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FISUser.h"
#import "FISFeedPost.h"
#import "FISTextPost.h"
#import "FISImagePost.h"
#import "FISUserProfileTableViewCell.h"
#import "FISNewsFeedTableViewController.h"

@interface FISTableViewController : UITableViewController
@property (strong, nonatomic) NSMutableArray *users;

@end
