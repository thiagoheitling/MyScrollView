//
//  MyScrollView.m
//  MyScrollView
//
//  Created by Thiago Heitling on 2016-01-25.
//  Copyright © 2016 Thiago Heitling. All rights reserved.
//

#import "MyScrollView.h"


@implementation MyScrollView


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
           UIPanGestureRecognizer *myPanGesture  = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(myScrollViewPan:)];
        [self addGestureRecognizer:myPanGesture];
    }
    return self;
}

-(void)myScrollViewPan:(UIPanGestureRecognizer *)sender
{
    if ([sender state] == UIGestureRecognizerStateBegan) {
        self.lastpoint = self.bounds.origin;
    }
    
    CGPoint thisInterval = [sender translationInView:self];
    
    NSLog(@"%@", NSStringFromCGPoint(thisInterval));
    
    CGFloat xDif = self.lastpoint.x - thisInterval.x;
    CGFloat yDif = self.lastpoint.y - thisInterval.y;
    
    if ((fabsf(xDif) < self.contentSize.width) && (fabsf(yDif) < self.contentSize.height))
    {
        self.bounds = CGRectMake(xDif, yDif, self.bounds.size.width, self.bounds.size.height);
    }
}
















@end
