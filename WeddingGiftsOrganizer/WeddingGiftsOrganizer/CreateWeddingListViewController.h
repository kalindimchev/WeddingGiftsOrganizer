//
//  CreateWeddingListViewController.h
//  WeddingGiftsOrganizer
//
//  Created by Kaloian on 2/7/16.
//  Copyright © 2016 Kalin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CreateWeddingListViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;

- (IBAction)tapCreateWeddingListButton:(id)sender;

@end
