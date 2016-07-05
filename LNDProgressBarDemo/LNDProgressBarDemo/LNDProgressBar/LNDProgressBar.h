//
//  LNDProgressBar.h
//  LNDProgressBarDemo
//
//  Created by andy on 16/7/5.
//  Copyright © 2016年 andy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LNDProgressBar : UIView

- (instancetype)initWithFrame:(CGRect)frame
                    totalStep:(NSUInteger)totalStep
                  currentStep:(NSUInteger)currentStep
                  isNeedRound:(BOOL)isNeedRound
                    backColor:(UIColor *)backColor
                    tintColor:(UIColor *)tintColor
                 currentColor:(UIColor *)currentColor;

- (void) moveToStep:(NSUInteger)currentStep;

@end
