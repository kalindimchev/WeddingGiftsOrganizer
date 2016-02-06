#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.modelLabel.text = self.gift.model;
    self.giftImageView.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:self.gift.imageUrl]]];;
    self.priceLabel.text = [NSString stringWithFormat:@"Price: %f", self.gift.price, nil];;
    self.webSiteLabel.text = self.gift.webSiteUrl;
    self.addressLabel.text = self.gift.address;
    
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

- (IBAction)tapTelButton:(id)sender {
}
@end
