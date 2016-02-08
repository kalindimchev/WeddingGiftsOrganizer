#import "DetailViewController.h"
#import "ParticipateViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = self.gift.model;
    
    self.modelLabel.text = self.gift.model;
    self.giftImageView.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:self.gift.imageUrl]]];
    self.priceLabel.text = [NSString stringWithFormat:@"Price: %.0f", self.gift.price, nil];
    self.giftDescriptionLabel.text = self.gift.giftDescription;
    [self.webSiteButton setTitle:self.gift.webSiteUrl forState:UIControlStateNormal];
    self.addressLabel.text = self.gift.address;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)tapWebSiteButton:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:self.webSiteButton.titleLabel.text]];
}


- (IBAction)tapTelButton:(id)sender {
}

- (IBAction)tapParticipateButton:(id)sender {
    NSString *storyBoardId = @"sendMoneyScene";
    
    GiftModel *gift = self.gift;
    
    ParticipateViewController *participateVC = [self.storyboard instantiateViewControllerWithIdentifier:storyBoardId];
    participateVC.gift = gift;
    
    [self.navigationController pushViewController:participateVC animated:YES];
}

@end
