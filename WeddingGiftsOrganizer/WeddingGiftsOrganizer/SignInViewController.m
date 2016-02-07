//
//  SignInViewController.m
//  WeddingGiftsOrganizer
//
//  Created by Kaloian on 2/7/16.
//  Copyright © 2016 Kalin. All rights reserved.
//

#import "SignInViewController.h"
#import <Firebase/Firebase.h>

@implementation SignInViewController

- (IBAction)tapSignInButton:(id)sender {
    NSString *dbURL = @"https://testappkalin.firebaseio.com/Users";
    
    Firebase *db = [[Firebase alloc] initWithUrl:dbURL];
    
    NSDictionary *user = @{
                               @"username": self.usernameTextField.text,
                               @"name": self.nameTextField.text,
                               @"email": self.emailTextField.text,
                               @"password": self.passwordTextField.text
                               };
    NSDictionary *users = @{
                            self.usernameTextField.text: user
                            };
    
    [db updateChildValues: users];
}
@end
