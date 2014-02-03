//
//  detailViewController.h
//  loyalTea
//
//  Created by Tom Berman on 02/02/2014.
//  Copyright (c) 2014 TandO. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Cafe.h"

@interface detailViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *icon;
@property (strong, nonatomic) IBOutlet UILabel *cafeName;
@property (strong, nonatomic) IBOutlet UITextView *decription;
@property (strong, nonatomic) IBOutlet UILabel *rewards;

- (void) setCafe:(Cafe*) cfe;
- (IBAction)goBack:(id)sender;

@end
