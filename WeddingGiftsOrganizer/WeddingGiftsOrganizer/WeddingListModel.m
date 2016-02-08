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
                    andPassword: (NSString*) password {
    
    self = [super init];
    
    if (self) {
        self.name = name;
        self.password = password;
        self.gifts = [NSMutableArray array];
    }
    
    return self;
    
}

+(WeddingListModel*) weddingListWithName: (NSString*) name
                                andPassword: (NSString*) password {
    
    return [[WeddingListModel alloc] initWithName:name andPassword:password];
}

@end
