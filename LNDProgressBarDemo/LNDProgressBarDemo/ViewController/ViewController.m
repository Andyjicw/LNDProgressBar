//
//  ViewController.m
//  LNDProgressBarDemo
//
//  Author Andyjicw 479003573@qq.com
//
//  Created by andy on 16/7/5.
//  Copyright © 2016年 andy. All rights reserved.
//

#import "ViewController.h"

#import "LNDProgressBar.h"

@interface ViewController ()

@property (nonatomic, strong) LNDProgressBar *bar1;

@property (nonatomic, strong) LNDProgressBar *bar2;

@property (nonatomic, strong) LNDProgressBar *bar3;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    CGRect frame1 = CGRectMake(10, 100, [UIScreen mainScreen].bounds.size.width - 20, 8);
    self.bar1 = [[LNDProgressBar alloc] initWithFrame:frame1
                                           totalStep:5
                                         currentStep:3
                                         isNeedRound:true
                                           backColor:[UIColor whiteColor]
                                           tintColor:[UIColor colorWithRed:0.7059 green:0.702 blue:0.7373 alpha:1.0]
                                        currentColor:[UIColor colorWithRed:0.1451 green:0.5804 blue:0.6275 alpha:1.0]];
    [self.view addSubview:self.bar1];
    
    
    CGRect frame2 = CGRectMake(20, 200, [UIScreen mainScreen].bounds.size.width - 40, 5);
    self.bar2 = [[LNDProgressBar alloc] initWithFrame:frame2
                                            totalStep:10
                                          currentStep:3
                                          isNeedRound:false
                                            backColor:[UIColor whiteColor]
                                            tintColor:[UIColor colorWithRed:0.7059 green:0.702 blue:0.7373 alpha:1.0]
                                         currentColor:[UIColor colorWithRed:0.1451 green:0.5804 blue:0.6275 alpha:1.0]];
    [self.view addSubview:self.bar2];
    
    
    CGRect frame3 = CGRectMake(10, 300, [UIScreen mainScreen].bounds.size.width - 20, 10);
    self.bar3 = [[LNDProgressBar alloc] initWithFrame:frame3
                                            totalStep:2
                                          currentStep:2
                                          isNeedRound:true
                                            backColor:[UIColor whiteColor]
                                            tintColor:[UIColor colorWithRed:0.7059 green:0.702 blue:0.7373 alpha:1.0]
                                         currentColor:[UIColor colorWithRed:0.1451 green:0.5804 blue:0.6275 alpha:1.0]];
    [self.view addSubview:self.bar3];
    
    [self performSelector:@selector(delayMethod) withObject:nil afterDelay:3];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) delayMethod {
    
    [self.bar1 moveToStep:1];
    [self.bar2 moveToStep:8];
    [self.bar3 moveToStep:0];
    
}
@end
