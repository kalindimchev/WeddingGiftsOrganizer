#import "TempData.h"

@interface TempData()

@property NSMutableArray *giftsCollection;
@property NSMutableArray *weddingsCollection;


@end


@implementation TempData

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.giftsCollection = [NSMutableArray array];
        self.weddingsCollection = [NSMutableArray array];
    }
    
    return self;
}

-(NSArray *)gifts {
    return [NSArray arrayWithArray:self.giftsCollection];
}

-(NSArray*) weddings {
    return [NSArray arrayWithArray:self.weddingsCollection];

}


-(void)addGift:(GiftModel *)gift {
    [self.giftsCollection addObject:gift];
}

-(void) createWedding: (WeddingListModel *) wedding {
    [self.weddingsCollection addObject:wedding];

}

@end
