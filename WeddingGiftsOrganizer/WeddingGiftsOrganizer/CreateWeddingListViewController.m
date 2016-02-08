#import "CreateWeddingListViewController.h"
#import "GiftModel.h"
#import <Firebase/Firebase.h>

@implementation CreateWeddingListViewController

- (IBAction)tapCreateWeddingListButton:(id)sender {
    NSString *dbURL = @"https://testappkalin.firebaseio.com/WeddingLists";
    
    Firebase *db = [[Firebase alloc] initWithUrl:dbURL];
    
    NSDictionary *photo = @{
                            @"model": @"gotin",
                            @"descc": @"tashak",
                            @"price": @"dobremmm",
                            @"address": @"burgas"
                            };
    NSDictionary *photoo = @{
                            @"model": @"gotin",
                            @"descc": @"tashak",
                            @"price": @"dobremmm",
                            @"address": @"burgas"
                            };
    NSDictionary *list = @{
                           @"name": self.nameTextField.text,
                           @"password": self.passwordTextField.text,
                           @"gifts": [NSArray arrayWithObjects:photo, photoo, nil]
                           };
    
    NSDictionary *lists = @{
                            self.nameTextField.text: list
                            };
    
    [db updateChildValues: lists];
}
@end
