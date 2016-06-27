//
//  FISTableViewController.m
//  facepad
//
//  Created by Flatiron School on 6/24/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import "FISTableViewController.h"

@interface FISTableViewController ()

@end

@implementation FISTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    FISUser *claire = [[FISUser alloc] initWithUsername:@"Claire" profilePicture:[UIImage imageNamed:@"claire"] coverImage:[UIImage imageNamed:@"claireCover"]];
    FISUser *jenny = [[FISUser alloc] initWithUsername:@"Jenny" profilePicture:[UIImage imageNamed:@"jenny"] coverImage:[UIImage imageNamed:@"jennyCover"]];
    FISUser *joe = [[FISUser alloc] initWithUsername:@"Joe" profilePicture:[UIImage imageNamed:@"joe"] coverImage:[UIImage imageNamed:@"joeCover"]];
    FISUser *matt = [[FISUser alloc] initWithUsername:@"Matt" profilePicture:[UIImage imageNamed:@"matt"] coverImage:[UIImage imageNamed:@"mattCover"]];
    self.users = [@[claire, jenny, joe, matt] mutableCopy];
    
    FISTextPost *claireTextPost = [[FISTextPost alloc] initWithAuthor:@"Claire" text:@"Lovely hanging in the Park with my best pal Aly!"];
    FISImagePost *claireImagePost = [[FISImagePost alloc] initWithAuthor:@"Claire" image:[UIImage imageNamed:@"claireImagePost"]];
    claire.posts = [@[claireTextPost, claireImagePost] mutableCopy];
    
    FISTextPost *jennyTextPost = [[FISTextPost alloc] initWithAuthor:@"Jenny" text:@"Saw this incredible sculpture at the Noguchi Museum"];
    FISImagePost *jennyImagePost = [[FISImagePost alloc] initWithAuthor:@"Jenny" image:[UIImage imageNamed:@"jennyImagePost"]];
    jenny.posts = [@[jennyTextPost, jennyImagePost] mutableCopy];
    
    FISTextPost *joeTextPost = [[FISTextPost alloc] initWithAuthor:@"Joe" text:@"Vietnam has tropical fruits that I had never seen or tasted before!"];
    FISImagePost *joeImagePost = [[FISImagePost alloc] initWithAuthor:@"Joe" image:[UIImage imageNamed:@"joeImagePost"]];
    joe.posts = [@[joeTextPost, joeImagePost] mutableCopy];
    
    FISTextPost *mattTextPost = [[FISTextPost alloc] initWithAuthor:@"Matt" text:@"Blue skies and Richard Serra at Storm King"];
    FISImagePost *mattImagePost = [[FISImagePost alloc] initWithAuthor:@"Matt" image:[UIImage imageNamed:@"mattImagePost"]];
    matt.posts = [@[mattTextPost, mattImagePost] mutableCopy];
    
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
    return self.users.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    FISUserProfileTableViewCell *userCell = [tableView dequeueReusableCellWithIdentifier:@"userCell" forIndexPath:indexPath];
    
    FISUser *userForCell = self.users[indexPath.row];
    userCell.userProfilePic.image = userForCell.profilePicture;
    userCell.usernameLabel.text = userForCell.username;
    
    return userCell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    FISNewsFeedTableViewController *newsFeedVC = segue.destinationViewController;

    FISUser *selectedUser = self.users[[self.tableView indexPathForSelectedRow].row];
    newsFeedVC.user = selectedUser;
    NSLog(@"The selected user is %@", newsFeedVC.user.username);
}

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
