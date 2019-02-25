//
//  YLCalendarHeaderView.m
//  YLCalendar
//
//  Created by 梁煜麟 on 2/16/19.
//  Copyright © 2019 梁煜麟. All rights reserved.
//

#import "YLCalendarHeaderView.h"

@implementation YLCalendarHeaderView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self commonInitializer];
    }
    
    return self;
}

- (void)commonInitializer {
    _headerLabel = [[UILabel alloc] initWithFrame:self.bounds];
    _headerLabel.textAlignment = NSTextAlignmentCenter;
    _headerLabel.font = [UIFont systemFontOfSize:20];
    [self addSubview:_headerLabel];
}

- (void)setModel:(NSString *)text {
    _headerLabel.text = text;
}

@end
