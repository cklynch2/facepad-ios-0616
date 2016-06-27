//
//  FISUserDetailTableViewController.m
//  facepad
//
//  Created by Flatiron School on 6/24/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import "FISNewsFeedTableViewController.h"

@interface FISNewsFeedTableViewController ()

@end

@implementation FISNewsFeedTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.user.posts.count + 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        FISCoverImageTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"coverImageCell" forIndexPath:indexPath];
        cell.coverImageView.image = self.user.coverImage;
        return cell;
    }
    
    if ([self.user.posts[indexPath.row - 1] isKindOfClass:[FISImagePost class]]) {
        FISImagePost *imagePost = self.user.posts[indexPath.row - 1];
        FISImagePostTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"imagePostCell" forIndexPath:indexPath];
        cell.imagePostProfilePic.image = self.user.profilePicture;
        cell.imagePostUsernameLabel.text = self.user.username;
        cell.imagePostImageView.image = imagePost.image;
        return cell;
    
    } else if ([self.user.posts[indexPath.row - 1] isKindOfClass:[FISTextPost class]]) {
        FISTextPost *textPost = self.user.posts[indexPath.row - 1];
        FISTextTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"textPostCell" forIndexPath:indexPath];
        cell.textPostProfilePic.image = self.user.profilePicture;
        cell.textPostUsernameLabel.text = self.user.username;
        cell.textPostTextView.text = textPost.text;
        return cell;
    }
}

/*
// Trying to figure out how to dynamically set the height of the cell based on whether it is an image post or a text post...
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if ([self.user.posts[indexPath.row - 1] isKindOfClass:[FISImagePost class]]) {
        FISImagePost *imagePost = self.user.posts[indexPath.row - 1];
        CGFloat *imageHeight =
 }
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
