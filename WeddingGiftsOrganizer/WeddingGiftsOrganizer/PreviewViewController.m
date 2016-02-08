#import "PreviewViewController.h"
#import "GiftsViewController.h"
#import "AppDelegate.h"
#import <Firebase/Firebase.h>


@interface PreviewViewController ()

@end

@implementation PreviewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = self.gift.model;
    self.imageView.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:self.gift.imageUrl]]];
    self.priceLabel.text = [NSString stringWithFormat:@"Price: %.0f", self.gift.price, nil];
    self.webSiteLabel.text =  self.gift.webSiteUrl;
    self.addressLabel.text = self.gift.address;
}

-(void) backToAddView {
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


- (IBAction)tapTelBtn:(id)sender {
}

- (IBAction)tapAddBtn:(id)sender {
    NSString *storyBoardId = @"giftsTableViewScene";
    
    NSString *dbURL = @"https://wedding-gifts-org.firebaseio.com/Gifts";
    Firebase *db = [[Firebase alloc] initWithUrl:dbURL];
    
    NSDictionary *gift = @{
                           @"model": self.gift.model,
                           @"giftDescription": self.gift.giftDescription,
                           @"webSiteUrl": self.gift.webSiteUrl,
                           @"phoneNumber": self.gift.phoneNumber,
                           @"address": self.gift.address,
                           @"imageUrl": self.gift.imageUrl,
                           @"price": [NSString stringWithFormat:@"%f", [self.gift price]]
                           };
    
    NSDictionary *gifts = @{
                            self.gift.model: gift,
                            };
    
    [db updateChildValues: gifts];

    GiftsViewController *giftsVC = [self.storyboard instantiateViewControllerWithIdentifier:storyBoardId];
    
    [self.navigationController pushViewController:giftsVC animated:YES];
    
    AppDelegate *delegate = [UIApplication sharedApplication].delegate;
    [delegate.data addGift:self.gift];
    
    

}
@end
