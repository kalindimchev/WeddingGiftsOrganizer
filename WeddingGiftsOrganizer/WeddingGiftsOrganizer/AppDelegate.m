#import "AppDelegate.h"
#import <Firebase/Firebase.h>


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.data = [[TempData alloc] init];
    
    NSString *dbGiftsUrl = @"https://wedding-gifts-org.firebaseio.com/Gifts";
    
    Firebase *dbGifts = [[Firebase alloc] initWithUrl:dbGiftsUrl];
    
    [[dbGifts queryOrderedByChild:@"model"]
            observeEventType:FEventTypeChildAdded
                   withBlock:^(FDataSnapshot *snapshot) {
    
        GiftModel *gift = [[GiftModel alloc] initWithModel:snapshot.value[@"model"]
                                           giftDescription:snapshot.value[@"giftDescription"]
                                                webSiteUrl:snapshot.value[@"webSiteUrl"]
                                               phoneNumber:snapshot.value[@"phoneNumber"]
                                                   address:snapshot.value[@"address"]
                                                  imageUrl:snapshot.value[@"imageUrl"]
                                                  andPrice:[snapshot.value[@"price"] floatValue]];
    
        [self.data addGift:gift];
    }];
    
    NSString *dbWeddingsURL = @"https://wedding-gifts-org.firebaseio.com/Weddings";
    
    Firebase *dbWeddings = [[Firebase alloc] initWithUrl:dbWeddingsURL];
    
    [[dbWeddings queryOrderedByChild:@"name"]
     observeEventType:FEventTypeChildAdded
     withBlock:^(FDataSnapshot *snapshot) {
        
         
         WeddingListModel *wedding = [[WeddingListModel alloc] initWithName:snapshot.value[@"name"] andPassword:snapshot.value[@"password"]];
         wedding.gifts = snapshot.value[@"gifts"];
         
         [self.data createWedding:wedding];
     }];

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
