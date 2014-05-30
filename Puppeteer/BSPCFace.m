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
- (id) initWithName:(NSString*)name Image:(UIImage*)img Sounds:(NSMutableArray*)sounds Rect:(CGRect)rect
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
    AVAudioSession *audioSession = [AVAudioSession sharedInstance];
    [audioSession setCategory:AVAudioSessionCategoryPlayback error:NULL];

    
    NSString *quoteName=[self.quoteArray objectAtIndex:name];
    int lastDot=(int)[quoteName rangeOfString:@"." options:NSBackwardsSearch].location;
    NSURL *url = [[NSBundle mainBundle] URLForResource:[quoteName substringToIndex:lastDot] withExtension:[quoteName substringFromIndex:lastDot+1]];
    
    NSLog(@"url: %@",url);
    
    NSError *error;
    audioPlayer = [[AVAudioPlayer alloc]
                   initWithContentsOfURL:url error:&error];
    
    NSLog(@"error: %@",error);
    [audioPlayer prepareToPlay];
    [audioPlayer play];
}

@end
