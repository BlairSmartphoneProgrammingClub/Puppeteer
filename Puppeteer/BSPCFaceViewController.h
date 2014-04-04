//
//  BSPCFaceViewController.h
//  Puppeteer
//
//  Created by Chazan, Jonah on 4/4/14.
//  Copyright (c) 2014 BlairSmartphoneProgrammingClub. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BSPCFaceViewController : UIViewController {
    
}

@property() IBOutlet UIView *coverUp;
@property() IBOutlet UIImageView *face,*chin;

- (IBAction)playQuote:(id)sender;
- (IBAction)closeView:(id)sender;

@end
