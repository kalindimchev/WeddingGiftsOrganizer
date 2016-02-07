#import "AddGiftViewController.h"
#import "GiftModel.h"
#import "PreviewViewController.h"

@interface AddGiftViewController ()

@end

@implementation AddGiftViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"ADD GIFT";
    NSLog(@"hui");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)tapPreviewBtn:(id)sender {
    NSString *storyBoardId = @"previewScene";

    GiftModel *gift = [GiftModel giftWithModel:self.modelLabel.text giftDescription:self.descriptionLabel.text webSiteUrl:self.webSiteUrlLabel.text phoneNumber:self.phoneNumberLabel.text address:self.addressLabel.text imageUrl:self.imageUrlLabel.text andPrice:[self.priceLabel.text floatValue]];
    
    PreviewViewController *previewVC = [self.storyboard instantiateViewControllerWithIdentifier:storyBoardId];
        previewVC.gift = gift;
        
    [self.navigationController pushViewController:previewVC animated:YES];
    
}
@end
