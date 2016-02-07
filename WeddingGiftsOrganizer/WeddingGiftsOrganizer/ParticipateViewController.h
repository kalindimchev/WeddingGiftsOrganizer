#import <UIKit/UIKit.h>
#import "GiftModel.h"

@interface ParticipateViewController : UIViewController
@property (strong, nonatomic) GiftModel *gift;

@property (weak, nonatomic) IBOutlet UITextField *amountLabel;
@property (weak, nonatomic) IBOutlet UIStepper *stepper;
@property (weak, nonatomic) IBOutlet UILabel *label;

- (IBAction)stepperValueChanged:(id)sender;
- (IBAction)tapSendMoneyButton:(id)sender;


@end
