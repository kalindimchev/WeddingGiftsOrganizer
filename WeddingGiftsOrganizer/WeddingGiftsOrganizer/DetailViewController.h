#import <UIKit/UIKit.h>
#import "GiftModel.h"

@interface DetailViewController : UIViewController
@property (strong, nonatomic) GiftModel *gift;

@property (weak, nonatomic) IBOutlet UILabel *modelLabel;
@property (weak, nonatomic) IBOutlet UIImageView *giftImageView;
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;
@property (weak, nonatomic) IBOutlet UILabel *webSiteLabel;
@property (weak, nonatomic) IBOutlet UILabel *addressLabel;

- (IBAction)tapTelButton:(id)sender;
@end
