//
//  YKProgressBar.m
//
//  Created by Yuri Karabatov
//
//

import "YKProgressBar.h"

#define kYKProgressBarHeight 6.f
#define kYKProgressBarCornerRadius 3.f
#define kYKProgressBarActiveColor [UIColor blackColor]
#define kYKProgressBarBackgroundColor [UIColor colorWithWhite:1.f alpha:0.7f]

@implementation YKProgressBar {
    UIView* _progressView;
    NSLayoutConstraint* _progressWidth;
}

- (instancetype)init
{
    if (self = [super init]) {
        [self commonInit];
    }
    return self;
}

- (void)commonInit
{
    [self setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self setBackgroundColor:kYKProgressBarBackgroundColor];
    [self.layer setCornerRadius:kYKProgressBarCornerRadius];

    _progressView = [[UIView alloc] init];
    [_progressView setTranslatesAutoresizingMaskIntoConstraints:NO];
    [_progressView setBackgroundColor:kYKProgressBarActiveColor];
    [_progressView.layer setCornerRadius:kYKProgressBarCornerRadius];

    [self addSubview:_progressView];
    NSDictionary* views = NSDictionaryOfVariableBindings(_progressView);
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_progressView]-(>=0)-|" options:kNilOptions metrics:nil views:views]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[_progressView]|" options:kNilOptions metrics:nil views:views]];
    _progressWidth = [NSLayoutConstraint constraintWithItem:_progressView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.f constant:0.f];
    [self addConstraint:_progressWidth];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.f constant:kYKProgressBarHeight]];
}

- (void)setProgress:(CGFloat)progress
{
    _progress = MIN(1.f, MAX(0.f, progress));
    _progressWidth.constant = self.frame.size.width * _progress;
}

@end
