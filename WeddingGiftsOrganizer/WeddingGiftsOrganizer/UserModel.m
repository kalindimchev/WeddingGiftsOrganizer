//
//  UserModel.m
//  WeddingGiftsOrganizer
//
//  Created by Kaloian on 2/7/16.
//  Copyright © 2016 Kalin. All rights reserved.
//

#import "UserModel.h"

@implementation UserModel

-(instancetype) initWithName: (NSString*) name
                       email: (NSString*)email
                    username: (NSString*) username
                 andPassword: (NSString*) password {
    
    self = [super init];
    
    if (self) {
        self.name = name;
        self.email = email;
        self.username = username;
        self.password = password;
    }
    
    return self;
}

+(UserModel*) userWithName: (NSString*) name
                     email: (NSString*)email
                  username: (NSString*) username
               andPassword: (NSString*) password {
    
    return [[UserModel alloc] initWithName:name email:email username:username andPassword:password];
}

@end







