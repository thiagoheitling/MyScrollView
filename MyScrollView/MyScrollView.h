//
//  MyScrollView.h
//  MyScrollView
//
//  Created by Thiago Heitling on 2016-01-25.
//  Copyright © 2016 Thiago Heitling. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyScrollView : UIView

@property (nonatomic) CGSize contentSize;
@property (nonatomic) CGPoint lastpoint;

-(void)myScrollViewPan:(UIPanGestureRecognizer *)sender;

@end
