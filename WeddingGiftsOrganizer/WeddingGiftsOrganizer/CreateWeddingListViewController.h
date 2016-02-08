#import <UIKit/UIKit.h>

@interface CreateWeddingListViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;

- (IBAction)tapCreateWeddingListButton:(id)sender;

@end
