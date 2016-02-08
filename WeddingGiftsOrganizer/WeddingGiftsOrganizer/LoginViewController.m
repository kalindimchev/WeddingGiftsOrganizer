#import "LoginViewController.h"
#import "SignInViewController.h"
#import "GiftsViewController.h"
#import "WeddingsViewController.h"
#import <Firebase/Firebase.h>

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"LogIn Screen Loaded");
    
}

- (IBAction)tapLogInButton:(id)sender {
    BOOL isUserExists = NO;

    NSString *dbURL = @"https://wedding-gifts-org.firebaseio.com/Users";
    
    Firebase *db = [[Firebase alloc] initWithUrl:dbURL];
    
    [[[db queryOrderedByChild:@"username"] queryEqualToValue:self.usernameTextField.text]
     observeEventType:FEventTypeChildAdded withBlock:^(FDataSnapshot *snapshot) {
         
         if (snapshot.value[@"password" ] == self.passwordTextField.text) {
//             NSString *storyBoardId = @"giftsTableViewScene";
             NSString *storyBoardId = @"weddingsTableViewScene";

             GiftsViewController *giftsVC = [self.storyboard instantiateViewControllerWithIdentifier:storyBoardId];
             WeddingsViewController *weddingsVC = [self.storyboard instantiateViewControllerWithIdentifier:storyBoardId];

             [self.navigationController pushViewController:weddingsVC animated:YES];

         }
         else {
             UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Log In" message:@"Username and Password doesn't match" delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
             [alert show];

         }
     }];
    
}

- (IBAction)tapSignInButton:(id)sender {
    NSString *storyBoardId = @"signInScene";
    
    SignInViewController *signInVC = [self.storyboard instantiateViewControllerWithIdentifier:storyBoardId];
    
    [self.navigationController pushViewController:signInVC animated:YES];
   
}
@end
