#import "AddGiftViewController.h"
#import "GiftModel.h"
#import "PreviewViewController.h"
#import <Firebase/Firebase.h>


@interface AddGiftViewController ()

@end

@implementation AddGiftViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"ADD GIFT";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)tapPreviewBtn:(id)sender {
    NSString *storyBoardId = @"previewScene";

    GiftModel *gift = [GiftModel giftWithModel:self.modelLabel.text giftDescription:self.descriptionLabel.text webSiteUrl:self.webSiteUrlLabel.text phoneNumber:self.phoneNumberLabel.text address:self.addressLabel.text imageUrl:self.imageUrlLabel.text andPrice:[self.priceLabel.text floatValue]];
    
    PreviewViewController *previewVC = [self.storyboard instantiateViewControllerWithIdentifier:storyBoardId];
        previewVC.gift = gift;
        
    [self.navigationController pushViewController:previewVC animated:YES];
    
}
@end
