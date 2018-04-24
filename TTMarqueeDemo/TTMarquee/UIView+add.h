

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UIView(add)
@property (nonatomic, getter = getX_,           setter = setX_:)            CGFloat x;
@property (nonatomic, getter = getY_,           setter = setY_:)            CGFloat y;
@property (nonatomic, getter = getWidth_,       setter = setWidth_:)        CGFloat width;
@property (nonatomic, getter = getHeight_,      setter = setHeight_:)       CGFloat height;
@property (nonatomic, getter = getSize_,        setter = setSize_:)         CGSize size;
@property (nonatomic, getter = getOrigin_,      setter = setOrigin_:)       CGPoint origin;

@property (nonatomic, setter = setTop_:,        getter = getTop_)           CGFloat top;
@property (nonatomic, setter = setLeft_:,       getter = getLeft_)          CGFloat left;
@property (nonatomic, setter = setButtom_:,     getter = getButtom_)        CGFloat buttom;
@property (nonatomic, setter = setRight_:,      getter = getRight_)         CGFloat right;

@property (nonatomic, setter = setCenterX_:,    getter = getCenterX_)       CGFloat centerX;
@property (nonatomic, setter = setCenterY_:,    getter = getCenterY_)       CGFloat centerY;

@property (nonatomic, setter = setMidWidth_:,   getter = getMidWidth_)      CGFloat midWidth;
@property (nonatomic, setter = setMidHeight_:,  getter = getMidHeight_)     CGFloat midHeight;


- (void)setFrame:(CGFloat)x y:(CGFloat)y w:(CGFloat)w h:(CGFloat)h;
- (void)setXY:(CGFloat)x Y:(CGFloat)y;
- (void)setSizew:(CGFloat)w h:(CGFloat)h;



@end
