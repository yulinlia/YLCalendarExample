//
//  ComponentViewController.m
//  YLCalendar
//
//  Created by 梁煜麟 on 2/27/19.
//  Copyright © 2019 梁煜麟. All rights reserved.
//

#import "ComponentViewController.h"
#import "YLCalendarView.h"

@interface ComponentViewController ()

@property(nonatomic, strong) YLCalendarView *calendarView;

@end

@implementation ComponentViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.calendarView = [[YLCalendarView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:self.calendarView];
}

@end
