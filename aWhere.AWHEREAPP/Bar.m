//
//  Bar.m
//  aWhere.AWHEREAPP
//
//  Created by Arjun Dilip Kumar on 10/28/14.
//  Copyright (c) 2014 a'WHere. All rights reserved.
//

#import "Bar.h"
@import UIKit;

@implementation Bar

+(Bar *)newBarWithName:(NSString *)name type:(NSString *)type rating:(int)rating price:(int)price cover:(int)cover open:(int)open close:(int)close location:(NSString *)location thumbnail:(Bar_Thumbnail)thumbnail {
    Bar *bar = [[Bar alloc] init];
    bar.name = name;
    bar.type = type;
    bar.rating = rating;
    bar.price = price;
    bar.cover = cover;
    bar.open = open;
    bar.close = close;
    bar.location = location;
    bar.thumbnail = thumbnail;
    
    return bar;
}

-(UIImage *)barImage {
    switch (self.thumbnail) {
        case Skeeps:
            return [UIImage imageNamed:@"Skeeps.jpeg"];
            break;
        case Ricks:
            return [UIImage imageNamed:@"Ricks.jpeg"];
            break;
        case Necto:
            return [UIImage imageNamed:@"Necto.gif"];
            break;
        case Rush:
            return [UIImage imageNamed:@"Rush.jpeg"];
            break;
        case Charleys:
            return [UIImage imageNamed:@"Charleys.jpeg"];
            break;
        case Ashleys:
            return [UIImage imageNamed:@"Ashleys.jpeg"];
            break;
        case Heidelberg:
            return [UIImage imageNamed:@"Heidelberg.gif"];
        default:
            return nil;
            break;
    }
}

@end
