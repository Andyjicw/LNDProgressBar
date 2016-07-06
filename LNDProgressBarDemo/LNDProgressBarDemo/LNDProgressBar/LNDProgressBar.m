//
//  LNDProgressBar.m
//  LNDProgressBarDemo
//
//  Author Andyjicw 479003573@qq.com
//
//  Created by andy on 16/7/5.
//  Copyright © 2016年 andy. All rights reserved.
//

#import "LNDProgressBar.h"

@interface LNDProgressBar()

@property NSUInteger total;

@property NSUInteger current;

@property (nonatomic, strong) UIColor *tintColor;

@property (nonatomic, strong) UIColor *currentColor;

@end

@implementation LNDProgressBar

- (instancetype)initWithFrame:(CGRect)frame
                    totalStep:(NSUInteger)totalStep
                  currentStep:(NSUInteger)currentStep
                  isNeedRound:(BOOL)isNeedRound
                    backColor:(UIColor *)backColor
                    tintColor:(UIColor *)tintColor
                 currentColor:(UIColor *)currentColor {
    
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = backColor;
        self.total           = totalStep;
        self.current         = currentStep;
        self.tintColor       = tintColor;
        self.currentColor    = currentColor;
        self.layer.masksToBounds = YES;
        self.layer.borderWidth   = 0.5;
        self.layer.borderColor   = [UIColor clearColor].CGColor;
        self.layer.cornerRadius  = 0;
        if ( isNeedRound ) {
            self.layer.cornerRadius  = frame.size.height / 2;
        }
        [self setUI];
    }
    return self;
}

- (void) setUI {
    CGFloat width = (self.frame.size.width - self.total + 1) / self.total;
    for (int i = 0; i < self.total; i++) {
        CGPoint startP = CGPointMake((width + 1) * i, 0);
        CGPoint endP = CGPointMake(width * (i + 1) + i, 0);
        if (i < self.current) {
            [self addLine:startP end:endP color:self.currentColor];
        } else {
            [self addLine:startP end:endP color:self.tintColor];
        }
        
    }
}

- (void) addLine:(CGPoint)startPoint end:(CGPoint)endPoint color:(UIColor *)color {
    
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.lineWidth     = self.frame.size.height * 2;
    layer.strokeColor   = color.CGColor;
    UIBezierPath *path  = [UIBezierPath bezierPath];
    [path moveToPoint:startPoint];
    [path addLineToPoint:endPoint];
    layer.path          = path.CGPath;
    [self.layer addSublayer:layer];
}

- (void) moveToStep:(NSUInteger)currentStep {
    self.current = currentStep;
    [self setUI];
}

@end
