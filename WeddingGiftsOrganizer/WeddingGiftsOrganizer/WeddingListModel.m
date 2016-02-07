//
//  WeddingListModel.m
//  WeddingGiftsOrganizer
//
//  Created by Kaloian on 2/7/16.
//  Copyright © 2016 Kalin. All rights reserved.
//

#import "WeddingListModel.h"

@implementation WeddingListModel

-(instancetype) initWithName: (NSString*) name
                    password: (NSString*) password
                    andGifts: (NSMutableArray*) gifts {
    
    self = [super init];
    
    if (self) {
        self.name = name;
        self.password = password;
        self.gifts = gifts;
    }
    
    return self;
    
}

+(WeddingListModel*) weddingListWithName: (NSString*) name
                                password: (NSString*) password
                                andGifts: (NSMutableArray*) gifts {
    
    return [[WeddingListModel alloc] initWithName:name password:password andGifts:gifts];
}

@end
