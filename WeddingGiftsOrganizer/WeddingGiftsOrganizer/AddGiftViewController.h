//
//  AddGiftViewController.h
//  WeddingGiftsOrganizer
//
//  Created by Kaloian on 2/3/16.
//  Copyright © 2016 Kalin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddGiftViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *modelLabel;
@property (weak, nonatomic) IBOutlet UITextField *descriptionLabel;
@property (weak, nonatomic) IBOutlet UITextField *imageUrlLabel;
@property (weak, nonatomic) IBOutlet UITextField *webSiteUrlLabel;
@property (weak, nonatomic) IBOutlet UITextField *priceLabel;
@property (weak, nonatomic) IBOutlet UITextField *addressLabel;
@property (weak, nonatomic) IBOutlet UITextField *phoneNumberLabel;
- (IBAction)tapPreviewBtn:(id)sender;


@end
