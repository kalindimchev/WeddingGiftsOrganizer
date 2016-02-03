#import "GiftModel.h"

@implementation GiftModel

-(instancetype) initWithModel: (NSString*) model
                  description: (NSString*) description
                   webSiteUrl: (NSString*) webSiteUrl
                  phoneNumber: (NSString*) phoneNumber
                      address: (NSString*) address
                     imageUrl: (NSString*) imageUrl
                     andPrice: (CGFloat) price {
    
    self = [super init];
    
    if (self) {
        self.model = model;
        self.description = description;
        self.webSiteUrl = webSiteUrl;
        self.phoneNumber = phoneNumber;
        self.address = imageUrl;
        self.participants = [NSMutableArray arrayWithObjects:@"", nil];
        self.price = price;
        self.paidPrice = 0;
        self.remainingPrice = price;
    }
    
    return self;
}

+(GiftModel*) giftWithModel: (NSString*) model
                description: (NSString*) description
                 webSiteUrl: (NSString*) webSiteUrl
                phoneNumber: (NSString*) phoneNumber
                    address: (NSString*) address
                   imageUrl: (NSString*) imageUrl
                   andPrice: (CGFloat) price {
    return [[GiftModel alloc] initWithModel:model description:description webSiteUrl:webSiteUrl phoneNumber:phoneNumber address:address imageUrl:imageUrl andPrice:price];
}

@end