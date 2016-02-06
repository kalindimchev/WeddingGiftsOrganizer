#import <UIKit/UIKit.h>
#import "GiftModel.h"

@interface DetailViewController : UIViewController
@property (strong, nonatomic) GiftModel *gift;

@property (weak, nonatomic) IBOutlet UILabel *modelLabel;
@property (weak, nonatomic) IBOutlet UIImageView *giftImageView;
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;
@property (weak, nonatomic) IBOutlet UIButton *webSiteButton;
@property (weak, nonatomic) IBOutlet UILabel *addressLabel;
@property (weak, nonatomic) IBOutlet UIButton *tapWebSiteButton;

- (IBAction)tapWebSiteButton:(id)sender;
- (IBAction)tapTelButton:(id)sender;
- (IBAction)tapParticipateButton:(id)sender;
@end
