//
//  FISImagePostTableViewCell.m
//  facepad
//
//  Created by Flatiron School on 6/27/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import "FISImagePostTableViewCell.h"

@implementation FISImagePostTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.contentView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.contentView removeConstraints:self.contentView.constraints];
    self.imagePostImageView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.imagePostImageView removeConstraints:self.imagePostImageView.constraints];
    self.imagePostProfilePic.translatesAutoresizingMaskIntoConstraints = NO;
    [self.imagePostProfilePic removeConstraints:self.imagePostProfilePic.constraints];
    self.imagePostUsernameLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self.imagePostUsernameLabel removeConstraints:self.imagePostUsernameLabel.constraints];
    
    [self.imagePostProfilePic.topAnchor constraintEqualToAnchor:self.contentView.topAnchor constant:10.0].active = YES;
    [self.imagePostProfilePic.leftAnchor constraintEqualToAnchor:self.contentView.leftAnchor constant:10.0].active = YES;
    [self.imagePostProfilePic.widthAnchor constraintEqualToConstant:45.0].active = YES;
    [self.imagePostProfilePic.heightAnchor constraintEqualToConstant:45.0].active = YES;
    
    [self.imagePostUsernameLabel.centerYAnchor constraintEqualToAnchor:self.imagePostProfilePic.centerYAnchor].active = YES;
    [self.imagePostUsernameLabel.leftAnchor constraintEqualToAnchor:self.imagePostProfilePic.rightAnchor constant:10.0].active = YES;
    
    [self.imagePostImageView.topAnchor constraintEqualToAnchor:self.imagePostProfilePic.bottomAnchor constant:10.0].active = YES;
    [self.imagePostImageView.leftAnchor constraintEqualToAnchor:self.contentView.leftAnchor constant:10.0].active = YES;
    [self.imagePostImageView.widthAnchor constraintEqualToAnchor:self.contentView.widthAnchor constant: -20.0].active = YES;
    [self.imagePostImageView.heightAnchor constraintEqualToAnchor:self.contentView.heightAnchor constant:-65.0].active = YES;
    self.imagePostImageView.contentMode = UIViewContentModeScaleAspectFit;
    
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
