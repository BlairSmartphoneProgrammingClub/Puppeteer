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
    UITapGestureRecognizer *gesture1=[[UITapGestureRecognizer alloc] init];
    UITapGestureRecognizer *gesture2=[[UITapGestureRecognizer alloc] init];
    [self.face1 addGestureRecognizer:gesture1];
    [self.face2 addGestureRecognizer:gesture2];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)face1Tapped{
    BSPCFaceViewController *newViewController = [[BSPCFaceViewController alloc] initWithNibName:@"FaceView" bundle:nil];
    
    [self.controller presentViewController:newViewController animated:YES completion:nil];
}

- (void)

@end
