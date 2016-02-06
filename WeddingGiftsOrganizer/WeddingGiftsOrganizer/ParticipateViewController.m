#import "ParticipateViewController.h"
#import "GiftsViewController.h"

@interface ParticipateViewController ()

@end

@implementation ParticipateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"%f", self.gift.price);
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

- (IBAction)tapSendMoneyButton:(id)sender {
    NSString *storyBoardId = @"giftsTableViewScene";

    CGFloat amount = [self.amountLabel.text floatValue];
    NSLog(@"%.0f", amount);
    self.gift.remainingPrice -= amount;
    NSLog(@"%.0f", self.gift.remainingPrice);
    
    GiftsViewController *giftsVC = [self.storyboard instantiateViewControllerWithIdentifier:storyBoardId];
    
    [self.navigationController pushViewController:giftsVC animated:YES];
    
    
}
@end
