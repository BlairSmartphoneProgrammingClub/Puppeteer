//
//  BSPCFace.m
//  Puppeteer
//
//  Created by Chazan, Jonah on 4/4/14.
//  Copyright (c) 2014 BlairSmartphoneProgrammingClub. All rights reserved.
//

#import "BSPCFace.h"

@implementation BSPCFace

/**
 *  Function: initWithName
 *  ----------------------
 *  This is the first and last time I will show you guys this. Do comments pls, it makes
 *  everyone's life easier. Oh year, this is a constructor.
 */
- (id) initWithName:(NSString*)n SmallImage:(UIImage*)smallImg LargeImage:(UIImage*)largeImg
{
    self = [super init];
    if (self)
    {
        self.smallPic = smallImg;
        self.largePic = largeImg;
        name = n;
    }
    else
    {
        NSLog(@"It borked, fix it");
    }
    return self;
}

/**
 *  Function: setQuotes
 *  -------------------
 *  Sets the NSMutableArray of quotes to q. The NSDictionary where the key is the name of the
 *  quote and the value is the file path
 */
- (void) setQuotes:(NSMutableArray*)q
{
    quotes = q;
}

- (void) playQuote:(NSString*)name
{
    
}

@end
