//
//  detailViewController.m
//  loyalTea
//
//  Created by Tom Berman on 02/02/2014.
//  Copyright (c) 2014 TandO. All rights reserved.
//

#import "detailViewController.h"


@interface detailViewController ()

@end

@implementation detailViewController
Cafe *cafe;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{

    [super viewDidLoad];
    self.navigationItem.hidesBackButton = YES;
    
    [self.cafeName setText:cafe.name];
    [self.decription setText:cafe.desc];
    [self.icon setImage:[UIImage imageNamed:cafe.img]];
    
    
//    NSManagedObjectContext *localContext = [NSManagedObjectContext MR_contextForCurrentThread];
    
    NSString *cid = [NSString stringWithFormat:@"%@",cafe.cafeId];
    NSArray *stmps = [Stamp MR_findByAttribute:@"cafeId" withValue:cid];
    
    
    
    NSString* reward = [NSString stringWithFormat:@"Stamps : %lu",(unsigned long)[stmps count]];
    [self.rewards setText:reward];
    
    [self.navigationItem setTitle:cafe.name];
    
}

- (void)setCafe:(Cafe *)cfe{
    cafe = cfe;
 
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)goBack:(id)sender {
//    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"No network connection"
//                                                    message:@"You must be connected to the internet to use this app."
//                                                   delegate:nil
//                                          cancelButtonTitle:@"OK"
//                                          otherButtonTitles:nil];
//    [alert show];
   
    [self dismissViewControllerAnimated:YES completion:nil];

}
@end
