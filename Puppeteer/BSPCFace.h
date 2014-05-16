//
//  BSPCFace.h
//  Puppeteer
//
//  Created by Chazan, Jonah on 4/4/14.
//  Copyright (c) 2014 BlairSmartphoneProgrammingClub. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>

@interface BSPCFace : NSObject {
    AVAudioPlayer *audioPlayer;
}

@property() NSString *name;
@property() CGRect rectangle;
@property() NSMutableArray *quoteArray;
@property() UIImage *pic;


- (id) initWithName:(NSString*)name Image:(UIImage*)Img Sounds:(NSMutableArray*)sounds Rect:(CGRect)rect;
- (void) addQuote:(NSString*)filePath;
- (void) playQuote:(int)name;

@end
