#import "PreviewViewController.h"
#import "GiftsViewController.h"
#import "AppDelegate.h"

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
    // Dispose of any resources that can be recreated.
}



- (IBAction)tapTelBtn:(id)sender {
}

- (IBAction)tapAddBtn:(id)sender {
    NSString *storyBoardId = @"giftsTableViewScene";
    
    GiftsViewController *giftsVC = [self.storyboard instantiateViewControllerWithIdentifier:storyBoardId];
    
    [self.navigationController pushViewController:giftsVC animated:YES];
    
    AppDelegate *delegate = [UIApplication sharedApplication].delegate;
    [delegate.data addGift:self.gift];
}
@end
