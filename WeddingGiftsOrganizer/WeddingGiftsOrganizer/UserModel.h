//
//  UserModel.h
//  WeddingGiftsOrganizer
//
//  Created by Kaloian on 2/7/16.
//  Copyright © 2016 Kalin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserModel : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *email;
@property (strong, nonatomic) NSString *username;
@property (strong, nonatomic) NSString *password;

-(instancetype) initWithName: (NSString*) name
                       email: (NSString*)email
                    username: (NSString*) username
                 andPassword: (NSString*) password;

+(UserModel*) userWithName: (NSString*) name
                     email: (NSString*)email
                  username: (NSString*) username
               andPassword: (NSString*) password;

@end
