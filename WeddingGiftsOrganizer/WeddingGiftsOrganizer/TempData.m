#import "TempData.h"

@interface TempData()


@property NSMutableArray *giftsCollection;

@end


@implementation TempData

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.giftsCollection = [NSMutableArray array];
    }
    
    return self;
}

-(NSArray *)gifts {
    return [NSArray arrayWithArray:self.giftsCollection];
}

-(void)addGift:(GiftModel *)gift {
    [self.giftsCollection addObject:gift];
}

@end
