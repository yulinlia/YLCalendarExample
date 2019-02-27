//
//  YLCalendarHeaderView.h
//  YLCalendar
//
//  Created by 梁煜麟 on 2/16/19.
//  Copyright © 2019 梁煜麟. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface YLCalendarHeaderView : UICollectionReusableView

@property(nonatomic, strong)UILabel *headerLabel;

- (void)setModel:(NSString *)text isCenter:(BOOL)isCenter;

@end

NS_ASSUME_NONNULL_END
