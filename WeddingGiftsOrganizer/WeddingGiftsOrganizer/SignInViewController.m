#import "SignInViewController.h"
#import "GiftsViewController.h"
#import <Firebase/Firebase.h>

@implementation SignInViewController

- (IBAction)tapSignInButton:(id)sender {
    NSString *dbURL = @"https://wedding-gifts-org.firebaseio.com//Users";
    
    Firebase *db = [[Firebase alloc] initWithUrl:dbURL];
    
    NSDictionary *user = @{
                               @"username": self.usernameTextField.text,
                               @"name": self.nameTextField.text,
                               @"email": self.emailTextField.text,
                               @"password": self.passwordTextField.text
                               };
    NSDictionary *users = @{
                            self.usernameTextField.text: user
                            };
    
    [db updateChildValues: users];
    
    NSString *storyBoardId = @"giftsTableViewScene";
    
    GiftsViewController *giftsVC = [self.storyboard instantiateViewControllerWithIdentifier:storyBoardId];
    
    [self.navigationController pushViewController:giftsVC animated:YES];
}
@end
