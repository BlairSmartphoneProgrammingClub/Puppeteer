//
//  BSPCFace.h
//  Puppeteer
//
//  Created by Chazan, Jonah on 4/4/14.
//  Copyright (c) 2014 BlairSmartphoneProgrammingClub. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BSPCFace : NSObject {}

@property() NSString *name;
@property() CGRect rectangle;
@property() NSMutableArray *quoteArray;
@property() UIImage *pic;


- (id) initWithName:(NSString*)name Image:(UIImage*)Img Sounds:(NSArray*)sounds Rect:(CGRect)rect;
- (void) addQuotes:(NSString*)name FilePath:(NSString*)filePath;
- (void) playQuote:(NSString*)name;

@end
