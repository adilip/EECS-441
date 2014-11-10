//
//  Bar.h
//  aWhere.AWHEREAPP
//
//  Created by Arjun Dilip Kumar on 10/28/14.
//  Copyright (c) 2014 a'WHere. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;

typedef enum {
    Skeeps = 0,
    Ricks,
    Necto,
    Rush,
    Charleys,
    Ashleys,
    Heidelberg
} Bar_Thumbnail;

@interface Bar : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *type;
@property (nonatomic, assign) int rating;
@property (nonatomic, assign) int price;
@property (nonatomic, assign) int cover;
@property (nonatomic, assign) int open;
@property (nonatomic, assign) int close;
@property (nonatomic, strong) NSString *location;
@property (nonatomic, assign) Bar_Thumbnail thumbnail;

// Factory class method to create new bars
+(Bar *)newBarWithName:(NSString *)name type:(NSString *)type
                rating:(int)rating price:(int)price
                 cover:(int)cover open:(int)open
                 close:(int)close location:(NSString *)location
             thumbnail:(Bar_Thumbnail)thumbnail;

// Convenience instance method to get the UIImage representing the bar's thumbnail.
-(UIImage *)barImage;

@end
