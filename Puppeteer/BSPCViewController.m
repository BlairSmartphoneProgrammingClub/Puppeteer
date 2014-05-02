//
//  BSPCViewController.m
//  Puppeteer
//
//  Created by Chazan, Jonah on 4/4/14.
//  Copyright (c) 2014 BlairSmartphoneProgrammingClub. All rights reserved.
//

#import "BSPCViewController.h"
#import "BSPCFaceViewController.h"

#define GAP_SIZE 20         //Height of the top bar
#define IMAGE_SIZE 320-3*GAP_SIZE      //the width of the screen minus GAP_SIZE on the left, right, and middle

@interface BSPCViewController ()

@end

@implementation BSPCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    faces = [[NSMutableArray alloc] initWithCapacity:10];
    
    NSXMLParser *parser = [[NSXMLParser alloc] initWithContentsOfURL:[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Faces" ofType:@"plist"]]];
    
    
    
    
    
    
    
    
    
    
    
    //adding objects to faces will finally finish around here I guess
    
    for(int i=0;i<[faces count];i++) {
        BSPCFace *face = [faces objectAtIndex:i];
        UIImageView *view = [[UIImageView alloc] initWithImage:face.smallPic];
        
        UITapGestureRecognizer *gestRec = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageTapped:)];
        [view addGestureRecognizer:gestRec];
        
        view.frame = CGRectMake(20+(150 * (i%2)), 20+150*i, IMAGE_SIZE, IMAGE_SIZE);
        
        view.tag = i;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)imageTapped:(id)sender {
    UIImageView *view = (UIImageView *)sender;
    BSPCFace *face = [faces objectAtIndex:view.tag];
    
    BSPCViewController* modalController = [[BSPCViewController alloc] initWithNibName:<#(NSString *)#> bundle:nil];
}

@end
