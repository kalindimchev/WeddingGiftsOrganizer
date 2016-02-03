#import <Foundation/Foundation.h>
#import "GiftModel.h"

@interface TempData : NSObject

-(NSArray*) gifts;
-(void) addGift: (GiftModel *) gift;

@end
