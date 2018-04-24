

#import "UIView+add.h"


@implementation UIView(add)

- (void)setX_:(CGFloat)x
{
    CGRect rect = self.frame;
    rect.origin.x = x;
    self.frame = rect;
}

- (CGFloat)getX_
{
    return self.frame.origin.x;
}

- (void)setY_:(CGFloat)y
{
    CGRect rect = self.frame;
    rect.origin.y = y;
    self.frame = rect;
}

- (CGFloat)getY_
{
    return self.frame.origin.y;
}

- (void)setWidth_:(CGFloat)width
{
    CGRect rect = self.frame;
    rect.size.width = width;
    self.frame = rect;
}

- (CGFloat)getWidth_
{
    return self.frame.size.width;
}

- (void)setHeight_:(CGFloat)height
{
    CGRect rect = self.frame;
    rect.size.height = height;
    self.frame = rect;
}

- (CGFloat)getHeight_
{
    return self.frame.size.height;
}

- (void)setSize_:(CGSize)size
{
    CGRect rect = self.frame;
    rect.size = size;
    self.frame = rect;
}

- (CGSize)getSize_
{
    return self.frame.size;
}

- (void)setOrigin_:(CGPoint)origin
{
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

- (CGPoint)getOrigin_
{
    return self.frame.origin;
}

- (void)setTop_:(CGFloat)top
{
    self.y = top;
}

- (CGFloat)getTop_
{
    return self.y;
}

- (void)setLeft_:(CGFloat)left
{
    self.x = left;
}

- (CGFloat)getLeft_
{
    return self.x;
}

- (void)setButtom_:(CGFloat)botm
{
    self.y = botm - self.height;
}

- (CGFloat)getButtom_
{
    return self.y + self.height;
}

- (void)setRight_:(CGFloat)right
{
    self.x = right - self.width;
}

- (CGFloat)getRight_
{
    return self.x + self.width;
}

- (void)setCenterX_:(CGFloat)centerX
{
    [self setCenter:(CGPoint){centerX, self.center.y}];
}

- (CGFloat)getCenterX_
{
    return self.center.x;
}

- (void)setCenterY_:(CGFloat)centerY
{
    [self setCenter:(CGPoint){self.center.x, centerY}];
}

- (CGFloat)getCenterY_
{
    return self.center.y;
}


- (CGFloat)getMidWidth_
{
    return self.width * 0.5f;
}

- (void)setMidWidth_:(CGFloat)midWidth
{
    self.width = self.width * 0.5f;
}


- (CGFloat)getMidHeight_
{
    return self.height * 0.5f;
}

- (void)setMidHeight_:(CGFloat)midWidth
{
    self.height = self.height * 0.5f;
}





- (void)setFrame:(CGFloat)x y:(CGFloat)y w:(CGFloat)w h:(CGFloat)h
{
    [self setFrame:CGRectMake(x, y, w, h)];
}

- (void)setXY:(CGFloat)x Y:(CGFloat)y
{
    CGPoint point;
    point.x = x;
    point.y = y;
    
    self.origin = point;
}

- (void)setSizew:(CGFloat)w h:(CGFloat)h
{
    CGSize size;
    size.width = w;
    size.height = h;
    
    self.size = size;
}


@end
