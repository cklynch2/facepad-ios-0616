//
//  FISTextPostTableViewCell.h
//  facepad
//
//  Created by Flatiron School on 6/27/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FISTextTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UITextView *textPostTextView;
@property (weak, nonatomic) IBOutlet UIImageView *textPostProfilePic;
@property (weak, nonatomic) IBOutlet UILabel *textPostUsernameLabel;

@end
