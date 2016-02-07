#import <UIKit/UIKit.h>
#import "GiftModel.h"

@interface PreviewViewController : UIViewController
@property (strong, nonatomic) GiftModel *gift;

@property (weak, nonatomic) IBOutlet UILabel *modelLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;
@property (weak, nonatomic) IBOutlet UILabel *giftDescriptionLabel;
@property (weak, nonatomic) IBOutlet UILabel *webSiteLabel;
@property (weak, nonatomic) IBOutlet UILabel *addressLabel;

- (IBAction)tapTelBtn:(id)sender;
- (IBAction)tapAddBtn:(id)sender;

@end
