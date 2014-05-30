//
//  BSPCFaceViewController.h
//  Puppeteer
//
//  Created by Chazan, Jonah on 4/4/14.
//  Copyright (c) 2014 BlairSmartphoneProgrammingClub. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BSPCFace.h"

@interface BSPCFaceViewController : UIViewController {
}

@property(nonatomic) BSPCFace *face;
@property() IBOutlet UIView *coverUp;
@property() IBOutlet UIImageView *faceView,*chinView;
@property() IBOutlet UISegmentedControl *segcon;

- (IBAction)playQuote:(id)sender;
- (IBAction)closeView:(id)sender;

@end
