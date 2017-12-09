//
//  MMONavigationBar.m
//
//  Created by Chih-Ju Huang on 2015/12/23.
//

#import "MMONavigationBar.h"

//IB_DESIGNABLE
@implementation MMONavigationBar

-(void)awakeFromNib{
    [super awakeFromNib];
}

#pragma mark - IBAction
- (IBAction)leftButtonAction:(UIButton *)sender
{
    if ([self.delegate respondsToSelector:@selector(didPressLeftButton:)]) {
        [self.delegate didPressLeftButton:self];
    }
}

- (IBAction)rightButtonAction:(UIButton *)sender
{
    if ([self.delegate respondsToSelector:@selector(didPressRightButton:)]) {
        [self.delegate didPressRightButton:self];
    }
}
- (IBAction)right2ButtonAction:(id)sender {
    if ([self.delegate respondsToSelector:@selector(didPressRight2Button:)]) {
        [self.delegate didPressRight2Button:self];
    }
}
+ (CGFloat) navigationBarHeight{
    return 64;
}
- (void) cleanBackground{
}
@end
