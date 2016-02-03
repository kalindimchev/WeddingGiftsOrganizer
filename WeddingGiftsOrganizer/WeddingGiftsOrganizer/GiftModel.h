#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface GiftModel : NSObject

@property (strong, nonatomic) NSString *model;
@property (strong, nonatomic) NSString *description;
@property (strong, nonatomic) NSString *webSiteUrl;
@property (strong, nonatomic) NSString *phoneNumber;
@property (strong, nonatomic) NSString *address;
@property (strong, nonatomic) NSString *imageUrl;
@property (strong, nonatomic) NSMutableArray *participants;
@property CGFloat price;
@property CGFloat paidPrice;
@property CGFloat remainingPrice;

-(instancetype) initWithModel: (NSString*) model
                  description: (NSString*) description
                   webSiteUrl: (NSString*) webSiteUrl
                  phoneNumber: (NSString*) phoneNumber
                      address: (NSString*) address
                     imageUrl: (NSString*) imageUrl
                     andPrice: (CGFloat) price;

+(GiftModel*) giftWithModel: (NSString*) model
                description: (NSString*) description
                 webSiteUrl: (NSString*) webSiteUrl
                phoneNumber: (NSString*) phoneNumber
                    address: (NSString*) address
                   imageUrl: (NSString*) imageUrl
                   andPrice: (CGFloat) price;

@end
