//
//  LoginViewController.m
//  WeddingGiftsOrganizer
//
//  Created by Kaloian on 2/7/16.
//  Copyright © 2016 Kalin. All rights reserved.
//

#import "LoginViewController.h"
#import "SignInViewController.h"
#import "GiftsViewController.h"
#import <Firebase/Firebase.h>

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"LogIn Screen Loaded");
    
}

- (IBAction)tapLogInButton:(id)sender {
    BOOL isUserExists = NO;

    NSString *dbURL = @"https://testappkalin.firebaseio.com/Users";
    
    Firebase *db = [[Firebase alloc] initWithUrl:dbURL];
    
    [[[db queryOrderedByChild:@"username"] queryEqualToValue:self.usernameTextField.text]
     observeEventType:FEventTypeChildAdded withBlock:^(FDataSnapshot *snapshot) {
         
         if (snapshot.value[@"password" ] == self.passwordTextField.text) {
             NSString *storyBoardId = @"giftsTableViewScene";
             
             GiftsViewController *giftsVC = [self.storyboard instantiateViewControllerWithIdentifier:storyBoardId];
             
             [self.navigationController pushViewController:giftsVC animated:YES];

         }
         else {
             NSLog(@"Nemaaaaa");
             UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Log In" message:@"Username and Password doesn't match" delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
             [alert show];

         }
     }];
    
}

- (IBAction)tapSignInButton:(id)sender {
    NSString *storyBoardId = @"signInScene";
    
    SignInViewController *signInVC = [self.storyboard instantiateViewControllerWithIdentifier:storyBoardId];
    
    [self.navigationController pushViewController:signInVC animated:YES];
}
@end
