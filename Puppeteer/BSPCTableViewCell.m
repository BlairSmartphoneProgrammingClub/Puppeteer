//
//  BSPCTableViewCell.m
//  Puppeteer
//
//  Created by Szabo, Aaron on 5/9/14.
//  Copyright (c) 2014 BlairSmartphoneProgrammingClub. All rights reserved.
//

#import "BSPCTableViewCell.h"

@implementation BSPCTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
