//
//  BSPCViewController.m
//  Puppeteer
//
//  Created by Chazan, Jonah on 4/4/14.
//  Copyright (c) 2014 BlairSmartphoneProgrammingClub. All rights reserved.
//

#import "BSPCViewController.h"

@interface BSPCViewController ()

@end

@implementation BSPCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    faces = [[NSMutableArray alloc] initWithCapacity:10];
    
    [faces addObject:[[BSPCFace alloc] initWithName:@"Pham" SmallImage:[UIImage imageNamed:@"phamSmall.png"] LargeImage:[UIImage imageNamed:@"phamLarge.png"]]];
    [faces addObject:[[BSPCFace alloc] initWithName:@"Fowler" SmallImage:[UIImage imageNamed:@"fowlerSmall.png"] LargeImage:[UIImage imageNamed:@"fowlerLarge.png"]]];
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //adding objects to faces will finally finish around here I guess
    
    for(int i=0;i<[faces count];i++) {
        BSPCFace *face = [faces objectAtIndex:i];
        UIImageView *view = [[UIImageView alloc] initWithImage:[face objectAtIndex:i]];
        
        UITapGestureRecognizer *gestRec = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageTapped)];
        [view addGestureRecognizer:gestRec];
        
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
