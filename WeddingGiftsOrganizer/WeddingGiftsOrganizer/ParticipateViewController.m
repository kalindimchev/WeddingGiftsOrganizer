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

- (IBAction)stepperValueChanged:(UIStepper*)sender {
    self.label.text = [NSString stringWithFormat:@"%.0f", sender.value*50];
}

- (IBAction)tapSendMoneyButton:(id)sender {
    NSString *storyBoardId = @"giftsTableViewScene";

    CGFloat amount = [self.label.text floatValue];
    NSLog(@"%.0f", amount);
    self.gift.remainingPrice -= amount;
    NSLog(@"%.0f", self.gift.remainingPrice);
    
    GiftsViewController *giftsVC = [self.storyboard instantiateViewControllerWithIdentifier:storyBoardId];
    
    [self.navigationController pushViewController:giftsVC animated:YES];
    
    
}
@end
