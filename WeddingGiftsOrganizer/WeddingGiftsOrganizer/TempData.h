#import <Foundation/Foundation.h>
#import "GiftModel.h"
#import "WeddingListModel.h"

@interface TempData : NSObject

-(NSArray*) gifts;
-(NSArray*) weddings;

-(void) addGift: (GiftModel *) gift;
-(void) createWedding: (WeddingListModel *) wedding;

@end
