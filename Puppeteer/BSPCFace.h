//
//  BSPCFace.h
//  Puppeteer
//
//  Created by Chazan, Jonah on 4/4/14.
//  Copyright (c) 2014 BlairSmartphoneProgrammingClub. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BSPCFace : NSObject {
    NSString *name;
    CGRect *rectangle;
    NSMutableDictionary *quoteDictionary;
}

@property() UIImage *smallPic,*largePic;

- (id) initWithName:(NSString*)name SmallImage:(UIImage*)smallImg LargeImage:(UIImage*)largeImage;
- (void) setQuoteDictionary:(NSMutableDictionary*)q;
- (void) addQuotes:(NSString*)name FilePath:(NSString*)filePath;
- (void) playQuote:(NSString*)name;

@end
