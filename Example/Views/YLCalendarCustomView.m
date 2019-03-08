//
//  YLCalendarCustomView.m
//  YLCalendar
//
//  Created by 梁煜麟 on 3/8/19.
//  Copyright © 2019 梁煜麟. All rights reserved.
//

#import "YLCalendarCustomView.h"
#import "YLCalendarSampleCollectionViewCell.h"

@implementation YLCalendarCustomView

- (Class)dateViewCellClass {
    return [YLCalendarSampleCollectionViewCell class];
}

@end
