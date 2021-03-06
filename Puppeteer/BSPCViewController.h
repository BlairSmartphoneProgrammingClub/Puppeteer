//
//  BSPCViewController.h
//  Puppeteer
//
//  Created by Chazan, Jonah on 4/4/14.
//  Copyright (c) 2014 BlairSmartphoneProgrammingClub. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BSPCFace.h"

@interface BSPCViewController : UIViewController <UITableViewDataSource, UITableViewDelegate> {}

@property() NSMutableArray *faces;
@property() IBOutlet UITableView* tableView;

- (void) imageTapped:(id)sender;

@end
