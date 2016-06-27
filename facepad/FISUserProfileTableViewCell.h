//
//  FISUserProfileTableViewCell.h
//  facepad
//
//  Created by Flatiron School on 6/27/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FISUserProfileTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *userProfilePic;
@property (weak, nonatomic) IBOutlet UILabel *usernameLabel;

@end
