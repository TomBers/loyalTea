//
//  stampViewController.h
//  loyalTea
//
//  Created by Tom Berman on 02/02/2014.
//  Copyright (c) 2014 TandO. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Stamp.h"

@interface stampViewController : UIViewController
- (IBAction)cafe1:(UIButton *)sender;
- (IBAction)cafe2:(UIButton *)sender;
- (IBAction)cafe3:(UIButton *)sender;

@property (strong, nonatomic) IBOutlet UIImageView *image;

@property (nonatomic,strong) NSManagedObjectContext *localContext;

@end
