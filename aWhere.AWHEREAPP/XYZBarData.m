//
//  XYZBarData.m
//  aWhere.AWHEREAPP
//
//  Created by Steve Merritt on 11/10/14.
//  Copyright (c) 2014 Steve Merritt. All rights reserved.
//

#import "XYZBarData.h"

@implementation XYZBarData

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


