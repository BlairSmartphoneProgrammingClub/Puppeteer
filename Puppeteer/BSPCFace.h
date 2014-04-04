//
//  BSPCFace.h
//  Puppeteer
//
//  Created by Chazan, Jonah on 4/4/14.
//  Copyright (c) 2014 BlairSmartphoneProgrammingClub. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BSPCFace : NSObject {
    UIImage *smallPic,*largePic;
    NSString *name;
    
    NSMutableArray *quotes;
}

- (id) initWithName:(NSString*)name SmallImage:(UIImage*)smallImg LargeImage:(UIImage*)largeImage;
- (void) setQuotes:(NSMutableArray*)q;
- (void) playQuote:(NSString*)name;

@end
