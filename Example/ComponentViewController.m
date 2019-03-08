//
//  ComponentViewController.m
//  YLCalendar
//
//  Created by 梁煜麟 on 2/27/19.
//  Copyright © 2019 梁煜麟. All rights reserved.
//

#import "ComponentViewController.h"
#import "YLCalendarCustomView.h"

@interface ComponentViewController ()

@property(nonatomic, strong) YLCalendarCustomView *calendarView;

@end

@implementation ComponentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.calendarView = [[YLCalendarCustomView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:self.calendarView];
}

@end
