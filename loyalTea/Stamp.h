//
//  Stamp.h
//  loyalTea
//
//  Created by Tom Berman on 04/02/2014.
//  Copyright (c) 2014 TandO. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Stamp : NSManagedObject

@property (nonatomic, retain) NSNumber * cafeId;
@property (nonatomic, retain) NSDate * timeStamp;

@end
