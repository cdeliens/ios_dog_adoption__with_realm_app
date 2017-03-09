//
//  RealmManager.h
//  News
//
//  Created by Christian Deliens on 3/4/17.
//  Copyright © 2017 Christian Deliens. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Realm/Realm.h>
#import "Dog.h"

@interface RealmManager : NSObject

+(RLMResults *)getAllDogs;

@end
