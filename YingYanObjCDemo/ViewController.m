//
//  ViewController.m
//  YingYanObjCDemo
//
//  Created by Daniel Bey on 2016/12/14.
//  Copyright © 2016年 Daniel Bey. All rights reserved.
//

#import "ViewController.h"
#import <BaiduTraceSDK/BaiduTraceSDK-Swift.h>

NSString * const ak = @"BWRxAmnBvG39ZnOnvFKjzEaRtKLltxHW";
NSString * const mcode = @"digndingtest";
const int serviceId = 141638;
NSString * const entityName = @"dingding_test_car";


static BTRACE *traceInstance = NULL;

@interface ViewController () <ApplicationServiceDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    traceInstance = [[BTRACE alloc] initWithAk:ak mcode:mcode serviceId:serviceId entityName:entityName operationMode:2];
}


- (IBAction)startTrace:(UIButton *)sender {
    [[BTRACEAction shared] startTrace:self trace:traceInstance];
}



- (IBAction)stopTrace:(UIButton *)sender {
    [[BTRACEAction shared] stopTrace:self trace:traceInstance];
}


- (void)onStartTrace:(NSInteger)errNo errMsg:(NSString *)errMsg {
    NSLog(@"errNo: %ld, errMsg: %@", (long)errNo, errMsg);
}

- (void)onStopTrace:(NSInteger)errNo errMsg:(NSString *)errMsg {
    NSLog(@"errNo: %ld, errMsg: %@", (long)errNo, errMsg);
}




@end
