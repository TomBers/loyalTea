//
//  Cafe.h
//  loyalTea
//
//  Created by Tom Berman on 04/02/2014.
//  Copyright (c) 2014 TandO. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Cafe : NSManagedObject

@property (nonatomic, retain) NSString * desc;
@property (nonatomic, retain) NSString * img;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSNumber * cafeId;

@end
