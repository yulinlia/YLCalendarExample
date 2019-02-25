//
//  YLCalendarCollectionViewCell.m
//  YLCalendar
//
//  Created by 梁煜麟 on 2/15/19.
//  Copyright © 2019 梁煜麟. All rights reserved.
//

#import "YLCalendarCollectionViewCell.h"
#import "YLCalendarModel.h"
#import "UIImage+YLUtil.h"

@interface YLCalendarCollectionViewCell()

@property(nonatomic, strong)UILabel *dateLabel;
@property(nonatomic, strong)UIImageView *dividorView;

@end

@implementation YLCalendarCollectionViewCell

#define DIVIDOR_KEY @"YLCalendarCell_dividor_key"

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self commonInitilizer];
    }
    
    return self;
}

- (void)commonInitilizer {
    CGFloat offsetY = 0;
    CGFloat offsetX = 0;
    CGFloat width = self.frame.size.width;
    CGFloat height = 1;
    self.dividorView = [[UIImageView alloc] initWithFrame:CGRectMake(offsetX, offsetY, width, height)];
    [self.dividorView setBackgroundColor:[UIColor redColor]];
    self.dividorView.image = [UIImage lineImageWithKey:DIVIDOR_KEY frame:self.dividorView.frame color:[self dividorColor]];
    [self addSubview:self.dividorView];
    
    self.dateLabel = [[UILabel alloc] initWithFrame:self.bounds];
    self.dateLabel.font = [UIFont systemFontOfSize:20];
    self.dateLabel.textAlignment = NSTextAlignmentCenter;
    [self addSubview:self.dateLabel];
}

- (void)setModel:(YLCalendarModel *)model isCenter:(BOOL)isCenter {
    if (model.isSameMonth) {
        self.dateLabel.hidden = false;
        self.dateLabel.text = [NSString stringWithFormat:@"%ld", (long)model.day];
        self.dividorView.hidden = false;
    }
    else {
        self.dateLabel.hidden = true;
        self.dividorView.hidden = true;
    }
    
    if (isCenter) {
        self.dateLabel.textColor = [UIColor blackColor];
    }
    else {
        self.dateLabel.textColor = [UIColor blueColor];
    }
}

- (UIColor *)dividorColor {
    return [UIColor colorWithRed:200/255.0f green:200/255.0f blue:200/255.0f alpha:1.0f];
}

@end
