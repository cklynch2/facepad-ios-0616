//
//  FISImagePostTableViewCell.h
//  facepad
//
//  Created by Flatiron School on 6/27/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FISImagePostTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imagePostProfilePic;
@property (weak, nonatomic) IBOutlet UIImageView *imagePostImageView;
@property (weak, nonatomic) IBOutlet UILabel *imagePostUsernameLabel;

@end
