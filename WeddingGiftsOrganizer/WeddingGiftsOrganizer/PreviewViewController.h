#import <UIKit/UIKit.h>

@interface PreviewViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *modelLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;
@property (weak, nonatomic) IBOutlet UILabel *webSiteLabel;
@property (weak, nonatomic) IBOutlet UILabel *addressLabel;
- (IBAction)tapTelBtn:(id)sender;
- (IBAction)tapAddBtn:(id)sender;

@end
