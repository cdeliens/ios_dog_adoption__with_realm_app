//
//  RealmManager.m
//  News
//
//  Created by Christian Deliens on 3/4/17.
//  Copyright © 2017 Christian Deliens. All rights reserved.
//

#import "RealmManager.h"

@implementation RealmManager

+(RLMResults *)getAllDogs
{
    RLMResults<Dog *> *dogs = [Dog allObjects];
    
    if (dogs.count > 0){
        return dogs;
    }
    return [RealmManager insertDogs];
    
}
+(Dog *)createDogWithName:(NSString *)name color:(NSString *)color location:(NSString *)location image:(NSString *)image contactInformation:(NSString *)contactInformation age:(int)age dogId:(int)dogId
{
    Dog *dog = [[Dog alloc] init];
    dog.name = name;
    dog.color = color;
    dog.image = image;
    dog.contactInformation = contactInformation;
    dog.age = age;
    dog.dogId = dogId;
    return dog;
}

+(RLMResults *)insertDogs
{
    
    Dog *dogOne = [RealmManager createDogWithName:@"Rufus" color:@"black" location:@"Cartago" image:@"1dog.jpeg" contactInformation:@"Deliens" age:1 dogId:1];
    Dog *dogTwo = [RealmManager createDogWithName:@"Canelo" color:@"black" location:@"Cartago" image:@"2dog.jpg" contactInformation:@"Deliens" age:1 dogId:2];
    Dog *dogThree = [RealmManager createDogWithName:@"Argus" color:@"black" location:@"Cartago" image:@"3dog.jpeg" contactInformation:@"Deliens" age:1 dogId:3];
    Dog *dogFour = [RealmManager createDogWithName:@"Sparky" color:@"black" location:@"Cartago" image:@"4dog.jpeg" contactInformation:@"Deliens" age:1 dogId:4];
    Dog *dogFive = [RealmManager createDogWithName:@"Chaco" color:@"black" location:@"Cartago" image:@"5dog.jpeg" contactInformation:@"Deliens" age:1 dogId:5];
    Dog *dogSix = [RealmManager createDogWithName:@"Titi" color:@"black" location:@"Cartago" image:@"6dog.jpeg" contactInformation:@"Deliens" age:1 dogId:6] ;
    Dog *dogSeven = [RealmManager createDogWithName:@"Coco" color:@"black" location:@"Cartago" image:@"7dog.jpeg" contactInformation:@"Deliens" age:1 dogId:7];
    Dog *dogEigth = [RealmManager createDogWithName:@"Ramón" color:@"black" location:@"Cartago" image:@"8dog.jpeg" contactInformation:@"Deliens" age:1 dogId:8];
    Dog *dogNine = [RealmManager createDogWithName:@"Pepe" color:@"black" location:@"Cartago" image:@"9dog.jpeg" contactInformation:@"Deliens" age:1 dogId:9];
    Dog *dogTen = [RealmManager createDogWithName:@"Lupe" color:@"black" location:@"Cartago" image:@"10dog.jpg" contactInformation:@"Deliens" age:1 dogId:10];
    

    [RealmManager saveRealmObject:dogOne];
    [RealmManager saveRealmObject:dogTwo];
    [RealmManager saveRealmObject:dogThree];
    [RealmManager saveRealmObject:dogFour];
    [RealmManager saveRealmObject:dogFive];
    [RealmManager saveRealmObject:dogSix];
    [RealmManager saveRealmObject:dogSeven];
    [RealmManager saveRealmObject:dogEigth];
    [RealmManager saveRealmObject:dogNine];
    [RealmManager saveRealmObject:dogTen];
    
    return [RealmManager getAllDogs];
}
+(void)saveRealmObject:(RLMObject *)realmObject
{
    // Get the default Realm
    RLMRealm *realm = [RLMRealm defaultRealm];
    // You only need to do this once (per thread)
    
    // Add to Realm with transaction
    [realm beginWriteTransaction];
    [realm addObject:realmObject];
    [realm commitWriteTransaction];
}

+(Dog *)getDogWithDogId:(int)dogId
{
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"dogId= %@", dogId];
    RLMResults<Dog *> * dogs = [Dog objectsWithPredicate:predicate];
    if (dogs.count > 0){
        return dogs.firstObject;
    }
    return nil;
}
@end
