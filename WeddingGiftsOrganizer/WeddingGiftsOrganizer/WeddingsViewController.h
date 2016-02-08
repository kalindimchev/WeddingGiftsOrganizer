#import <UIKit/UIKit.h>

@interface WeddingsViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) NSArray * weddingsData;

@property (weak, nonatomic) IBOutlet UITableView *weddingsTableView;



- (IBAction)tapCreateButton:(id)sender;

@end
