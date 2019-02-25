//
//  UIImage+YLUtil.m
//  YLCalendar
//
//  Created by 梁煜麟 on 2/25/19.
//  Copyright © 2019 梁煜麟. All rights reserved.
//

#import "UIImage+YLUtil.h"
#import "YLCache.h"

@implementation UIImage (YLUtil)

+ (UIImage *)lineImageWithKey:(NSString *)key frame:(CGRect)frame color:(UIColor *)color {
    UIImage *lineImage = [YLCache fetchObjectForKey:key withCreator:^id{
        UIGraphicsBeginImageContextWithOptions(frame.size, NO, 2.0);
        CGContextRef context = UIGraphicsGetCurrentContext();
        
        CGContextSetFillColorWithColor(context, color.CGColor);
        CGContextFillRect(context, frame);
        
        UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        
        return image;
    }];
    
    return lineImage;
}

@end
