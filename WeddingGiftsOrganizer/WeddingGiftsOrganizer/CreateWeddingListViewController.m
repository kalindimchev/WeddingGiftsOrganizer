#import "CreateWeddingListViewController.h"
#import "GiftModel.h"
#import "WeddingsViewController.h"
#import <Firebase/Firebase.h>

@implementation CreateWeddingListViewController

- (IBAction)tapCreateWeddingListButton:(id)sender {
    NSString *dbURL = @"https://wedding-gifts-org.firebaseio.com/Weddings";
    
    Firebase *db = [[Firebase alloc] initWithUrl:dbURL];
    

    NSDictionary *list = @{
                           @"name": self.nameTextField.text,
                           @"password": self.passwordTextField.text,
                           };
    
    NSDictionary *lists = @{
                            self.nameTextField.text: list
                            };
    
    [db updateChildValues: lists];
    
    NSString *storyBoardId = @"weddingsTableViewScene";
    
    WeddingsViewController *weddingsVC = [self.storyboard instantiateViewControllerWithIdentifier:storyBoardId];
    
    [self.navigationController pushViewController:weddingsVC animated:YES];
}
@end
