#import <UIKit/UIKit.h>

@interface GiftsViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) NSArray * giftsData;

@property (weak, nonatomic) IBOutlet UITableView *giftsTableView;
- (IBAction)tapAddBtn:(id)sender;

@end

