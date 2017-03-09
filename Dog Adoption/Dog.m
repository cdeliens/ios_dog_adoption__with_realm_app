//
//  Dog.m
//  Dog Adoption
//
//  Created by Christian Deliens on 2/27/17.
//  Copyright © 2017 Christian Deliens. All rights reserved.
//

#import "Dog.h"

@implementation Dog

-(id) initWithName:(NSString *)name color:(NSString *)color location:(NSString *)location image:(NSString *)image contactInformation:(NSString *)contactInformation age:(int)age dogId:(int)dogId
{
    if (self = [super init]) {
        _name = name;
        _color = color;
        _image = image;
        _contactInformation = contactInformation;
        _age = age;
        _location = location;
        _dogId = dogId;
    }
    return self;
}

@end

