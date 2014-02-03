//
//  stampViewController.m
//  loyalTea
//
//  Created by Tom Berman on 02/02/2014.
//  Copyright (c) 2014 TandO. All rights reserved.
//

#import "stampViewController.h"

@interface stampViewController ()

@end

@implementation stampViewController
@synthesize managedObjectContext;

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
    [self.image setImage:[UIImage imageNamed:@"stamp_3.jpg"]];
}

- (void)viewWillAppear:(BOOL)animated{
    [self.image setImage:[UIImage imageNamed:@"stamp_3.jpg"]];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Call The Core Data module to update value to the ID passed in.


- (IBAction)cafe1:(UIButton *)sender {
    
    NSLog(@"Cafe 1");
   [self.image setImage:[UIImage imageNamed:@"costa.jpeg"]];
    
}

- (IBAction)cafe2:(UIButton *)sender {
    NSLog(@"Cafe 2");
    [self.image setImage:[UIImage imageNamed:@"cafeNero.jpeg"]];
}

- (IBAction)cafe3:(UIButton *)sender {
    NSLog(@"Cafe 3");
    [self.image setImage:[UIImage imageNamed:@"starbucks.jpeg"]];
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSLog(@"Segue");
    [self.image setImage:[UIImage imageNamed:@"stamp_3.jpg"]];
}

@end
