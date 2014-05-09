//
//  BSPCTableViewCell.h
//  Puppeteer
//
//  Created by Szabo, Aaron on 5/9/14.
//  Copyright (c) 2014 BlairSmartphoneProgrammingClub. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BSPCFace.h"

@interface BSPCTableViewCell : UITableViewCell

@property() BSPCFace *face1,*face2;
@property() IBOutlet UIImageView *faceView1, *faceView2;
@property() IBOutlet UIViewController *controller;

@end
