//
//  BSPCViewController.m
//  Puppeteer
//
//  Created by Chazan, Jonah on 4/4/14.
//  Copyright (c) 2014 BlairSmartphoneProgrammingClub. All rights reserved.
//

#import "BSPCViewController.h"
#import "BSPCFaceViewController.h"
#import "BSPCTableViewCell.h"
#import "BSPCFace.h"

#define GAP_SIZE 20         //Height of the top bar
#define IMAGE_SIZE 320-3*GAP_SIZE      //the width of the screen minus GAP_SIZE on the left, right, and middle

@interface BSPCViewController ()

@end

@implementation BSPCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)imageTapped:(id)sender {
    UIImageView *view = (UIImageView *)sender;
    BSPCFace *face = [self.faces objectAtIndex:view.tag];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    // If you're serving data from an array, return the length of the array:
    
    return ([self.faces count]+1)/2;
}

- (NSIndexPath *) tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    return nil;
}

// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"FaceCell";
    
    BSPCTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    [cell.faceView1 setImage:((BSPCFace*)[self.faces objectAtIndex:indexPath.row*2]).pic];
    if ([self.faces count]>indexPath.row*2+1) {
            [cell.faceView2 setImage:((BSPCFace*)[self.faces objectAtIndex:indexPath.row*2+1]).pic];
    }
    
    cell.face1 = (BSPCFace*) [self.faces objectAtIndex:indexPath.row*2];
    
    return cell;
}

@end
