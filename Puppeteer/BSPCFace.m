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
- (id) initWithName:(NSString*)name Image:(UIImage*)img Sounds:(NSArray*)sounds Rect:(CGRect)rect
{
    self = [super init];
    if (self)
    {
        self.pic = img;
        self.name = name;
        self.quoteArray = sounds;
        self.rectangle = rect;
    }
    else
    {
        NSLog(@"It borked, fix it");
    }
    return self;
}

/**
 *  Function: addQuotes
 *  -------------------
 *  Adds more quotes to the NSMutableDictionary of quotes. 
 */
- (void) addQuote:(NSString*)filePath
{
    [self.quoteArray addObject:filePath];
}

- (void) playQuote:(int)name
{
    //Left as an exercise to the reader
}

@end
