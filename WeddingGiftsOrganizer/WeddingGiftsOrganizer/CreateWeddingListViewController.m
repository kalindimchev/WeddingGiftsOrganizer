//
//  CreateWeddingListViewController.m
//  WeddingGiftsOrganizer
//
//  Created by Kaloian on 2/7/16.
//  Copyright © 2016 Kalin. All rights reserved.
//

#import "CreateWeddingListViewController.h"
#import <Firebase/Firebase.h>

@implementation CreateWeddingListViewController

- (IBAction)tapCreateWeddingListButton:(id)sender {
    NSString *dbURL = @"https://testappkalin.firebaseio.com/WeddingLists";
    
    Firebase *db = [[Firebase alloc] initWithUrl:dbURL];
    
    NSDictionary *list = @{
                           @"name": self.nameTextField.text,
                           @"password": self.passwordTextField.text,
                           @"gifts": [NSArray arrayWithObjects:@"asdfsdf", @"sfasdfas", @"dddd", nil]
                           };
    
    NSDictionary *lists = @{
                            self.nameTextField.text: list
                            };
    
    [db updateChildValues: lists];
}
@end
