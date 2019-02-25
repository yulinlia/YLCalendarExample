//
//  YLCalendarCollectionViewCell.h
//  YLCalendar
//
//  Created by 梁煜麟 on 2/15/19.
//  Copyright © 2019 梁煜麟. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class YLCalendarModel;

@interface YLCalendarCollectionViewCell : UICollectionViewCell
//
//- (void)setModel:(YLCalendarModel *)model;

- (void)setModel:(YLCalendarModel *)model isCenter:(BOOL)isCenter;

@end

NS_ASSUME_NONNULL_END
