//
//  WeddingListModel.h
//  WeddingGiftsOrganizer
//
//  Created by Kaloian on 2/7/16.
//  Copyright © 2016 Kalin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WeddingListModel : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *password;
@property (strong, nonatomic) NSMutableArray *gifts;

-(instancetype) initWithName: (NSString*) name
                    andPassword: (NSString*) password;

+(WeddingListModel*) weddingListWithName: (NSString*) name
                                andPassword: (NSString*) password;

@end
