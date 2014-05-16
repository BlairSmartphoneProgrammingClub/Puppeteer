//
//  BSPCTableViewCell.m
//  Puppeteer
//
//  Created by Szabo, Aaron on 5/9/14.
//  Copyright (c) 2014 BlairSmartphoneProgrammingClub. All rights reserved.
//

#import "BSPCTableViewCell.h"
#import "BSPCFaceViewController.h"

@implementation BSPCTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
    }
    return self;
}

- (void)awakeFromNib
{
    NSLog(@"awakeFromNib");
    
    UITapGestureRecognizer *gesture1=[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(face1Tapped)];
    UITapGestureRecognizer *gesture2=[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(face2Tapped)];
    
    NSLog(@"faceView1: %@",self.faceView1);
    
    [self.faceView1 addGestureRecognizer:gesture1];
    [self.faceView2 addGestureRecognizer:gesture2];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
//    NSLog(@"selected");
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)face1Tapped{
    NSLog(@"face 1 tapped");
    
    BSPCFaceViewController *newViewController = [[BSPCFaceViewController alloc] initWithNibName:@"FaceView" bundle:nil];
    
    newViewController.face=self.face1;
    
    [self.controller presentViewController:newViewController animated:YES completion:nil];
}

- (void)face2Tapped{
    
    NSLog(@"face 2 tapped");
}

@end
