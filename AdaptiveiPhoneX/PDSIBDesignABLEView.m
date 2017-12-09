
#import "PDSIBDesignABLEView.h"
#import "Masonry.h"


@implementation PDSIBDesignABLEView

#pragma mark - IB_DESIGNABLE
-(instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self xibSetup];
    }
    return self;
}

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self xibSetup];
    }
    return self;
}

-(void)xibSetup
{
    UIView *view = [self loadViewFromNib];
    [self addSubview:view];
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self);
    }];
}

-(UIView *)loadViewFromNib
{
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    UINib *nib = [UINib nibWithNibName:NSStringFromClass([self class]) bundle:bundle];
    UIView *view = (UIView *)[nib instantiateWithOwner:self options:nil].firstObject;
    return view;
}

@end
