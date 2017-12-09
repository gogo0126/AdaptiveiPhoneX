//
//  MMONavigationBar.h
//
//  Created by Chih-Ju Huang on 2015/12/23.
//


#import <UIKit/UIKit.h>
#import "PDSIBDesignABLEView.h"

@protocol MMONavigationBarDelegate;

/**
 *  客製的 navigation bar。
 */
@interface MMONavigationBar : PDSIBDesignABLEView

+ (CGFloat) navigationBarHeight;

@property (nonatomic, weak) IBOutlet id delegate;
- (void) cleanBackground;
@end



#pragma mark - MMONavigationBarDelegate
@protocol MMONavigationBarDelegate <NSObject>
@optional
- (void)didPressLeftButton:(MMONavigationBar *)navigationBar;
- (void)didPressRightButton:(MMONavigationBar *)navigationBar;
- (void)didPressRight2Button:(MMONavigationBar *)navigationBar;
@end
