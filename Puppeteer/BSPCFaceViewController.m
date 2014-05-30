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
        UIScrollView *scroll = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 320, 435)];
        scroll.contentSize = CGSizeMake(320, 700);
        scroll.showsHorizontalScrollIndicator = YES;
        
        NSArray *itemArray = [NSArray arrayWithObjects: @"One", @"Two", @"Three", nil];
        UISegmentedControl *segmentedControl = [[UISegmentedControl alloc] initWithItems:itemArray];
        segmentedControl.frame = CGRectMake(35, 200, 250, 50);
        segmentedControl.segmentedControlStyle = UISegmentedControlStylePlain;
        [segmentedControl addTarget:self action:@selector(MySegmentControlAction:) forControlEvents: UIControlEventValueChanged];
        segmentedControl.selectedSegmentIndex = 1;
        [scroll addSubview:segmentedControl];
        [segmentedControl release]; 
        [self.view addSubview:scroll];
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
    
    
    int imgWidth = self.faceView.image.size.width;
    int imgHeight = self.faceView.image.size.height;
    
    int cropH = imgHeight * dims.size.height / 100;
    int cropW = imgWidth * dims.size.width / 100;
    int cropY = imgHeight * dims.origin.y / 100;
    int cropX = imgWidth * dims.origin.x / 100;
    
    CGRect imgDims = CGRectMake(cropH, cropW, cropX, cropY);
    
    UITapGestureRecognizer *gesture1=[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(playQuote:)];
    
    [self.view addGestureRecognizer:gesture1];
    
    CGImageRef imageRef = CGImageCreateWithImageInRect([self.faceView.image CGImage], imgDims);
    // or use the UIImage wherev0er you like
    [self.chinView setImage:[UIImage imageWithCGImage:imageRef]];
    CGImageRelease(imageRef);
    
    /**
    CGContextRef bitmap=CGBitmapContextCreate(NULL, targetWidth, targetHeight, CGImageGetBitsPerComponent(imageRef), CGImageGetBytesPerRow(imageRef), colorSpaceInfo, bitmapInfo);


    CGContextTranslateCTM (bitmap, imgWidth, imgHeight);
    CGContextRotateCTM (bitmap, radians(-180.));
    */
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
    [self.face playQuote:0];
    NSLog(@"play quote");
}

- (void)closeView:(id)sender {
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

@end
