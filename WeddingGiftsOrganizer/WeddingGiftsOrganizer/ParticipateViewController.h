#import <UIKit/UIKit.h>
#import "GiftModel.h"

@interface ParticipateViewController : UIViewController
@property (strong, nonatomic) GiftModel *gift;

@property (weak, nonatomic) IBOutlet UITextField *amountLabel;
- (IBAction)tapSendMoneyButton:(id)sender;

@end
