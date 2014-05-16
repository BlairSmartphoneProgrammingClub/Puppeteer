//
//  BSPCFaceViewController.m
//  Puppeteer
//
//  Created by Chazan, Jonah on 4/4/14.
//  Copyright (c) 2014 BlairSmartphoneProgrammingClub. All rights reserved.
//

#import "BSPCFaceViewController.h"
#import "BSPCFace.h"

@interface BSPCFaceViewController ()

@end

@implementation BSPCFaceViewController

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
    self.faceView.image=self.face.pic;
    
    CGRect screen = self.faceView.frame;
    CGRect dims = self.face.rectangle;
    
    int screenHeight = screen.size.height;
    int screenWidth = screen.size.width;
    
    //CGRect newCover
    int newH = screenHeight * dims.size.height / 100;
    int newW = screenWidth * dims.size.width / 100;
    int newY = screenHeight * dims.origin.y / 100;
    int newX = screenWidth * dims.origin.x / 100;
    NSLog(@"screen: %@",NSStringFromCGRect(screen));
    NSLog(@"%i, %i, %i, %i",newX,newY,newW,newH);
    NSLog(@"frame: %@",NSStringFromCGRect(self.coverUp.frame));
    [self.coverUp setFrame:CGRectMake(newX, newY, newW, newH)];
    NSLog(@"frame2: %@",NSStringFromCGRect(self.coverUp.frame));
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setFace:(BSPCFace *)face {
    _face=face;
    
    NSLog(@"view: %@",self.faceView);
    self.faceView.image = face.pic;
    NSLog(@"the pic %@",face.pic);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(void)moveMouth:(BSPCFace *)face
{
    
}

- (void)playQuote:(id)sender {
    
}

- (void)closeView:(id)sender {
    
}

@end
