//
//  YKProgressBar.h
//
//  Created by Yuri Karabatov
//
//

#import <UIKit/UIKit.h>

/**
 * A simple drop-in progress bar control. Use the `progress` property (0..1) to
 * set progress.
 */
@interface YKProgressBar : UIView

/** Set to any float between 0 and 1. */
@property (nonatomic) CGFloat progress;

@end
