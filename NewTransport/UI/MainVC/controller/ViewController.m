//
//  ViewController.m
//  NewTransport
//
//  Created by Topptp on 16/8/15.
//  Copyright © 2016年 Topoto. All rights reserved.
//

#import "ViewController.h"
#import <JTCalendar/JTCalendar.h>

@interface ViewController () <JTCalendarDelegate>
{
    NSDate *_todayDate;
}

@property (weak, nonatomic) IBOutlet JTHorizontalCalendarView *jtHCalendarView;

@property (strong, nonatomic) JTCalendarManager *calendarManager;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _todayDate = [NSDate date];
    
    self.calendarManager = [JTCalendarManager new];
    self.calendarManager.delegate = self ;
    
    [self.calendarManager setContentView:self.jtHCalendarView];
    [self.calendarManager setDate:_todayDate];
}




@end
