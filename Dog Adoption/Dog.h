//
//  Dog.h
//  Dog Adoption
//
//  Created by Christian Deliens on 2/27/17.
//  Copyright © 2017 Christian Deliens. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Realm/Realm.h>

@interface Dog : RLMObject

@property NSString *name;
@property NSString *color;
@property NSString *image;
@property NSString *location;
@property NSString *contactInformation;
@property int age;
@property int dogId;


-(id) initWithName:(NSString *)name color:(NSString *)color location:(NSString *)location image:(NSString *)image contactInformation:(NSString *)contactInformation age:(int)age dogId:(int)dogId;

@end

RLM_ARRAY_TYPE(Dog)
