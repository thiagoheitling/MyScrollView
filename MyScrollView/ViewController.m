//
//  ViewController.m
//  MyScrollView
//
//  Created by Thiago Heitling on 2016-01-25.
//  Copyright © 2016 Thiago Heitling. All rights reserved.
//

#import "ViewController.h"
#import "MyScrollView.h"

@interface ViewController () <UIScrollViewDelegate>

@property(nonatomic) MyScrollView *myView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.myView = [[MyScrollView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:self.myView];
    self.myView.contentSize = self.view.frame.size;
    
    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    redView.backgroundColor = [UIColor redColor];
    
    UIView *greenView = [[UIView alloc] initWithFrame:CGRectMake(150, 150, 150, 200)];
    greenView.backgroundColor = [UIColor greenColor];
    
    UIView *blueView = [[UIView alloc] initWithFrame:CGRectMake(40, 400, 200, 150)];
    blueView.backgroundColor = [UIColor blueColor];
    
    UIView *yellowView = [[UIView alloc] initWithFrame:CGRectMake(100, 600, 180, 150)];
    yellowView.backgroundColor = [UIColor yellowColor];
    
    [self.myView addSubview:redView];
    [self.myView addSubview:greenView];
    [self.myView addSubview:blueView];
    [self.myView addSubview:yellowView];

    
}

-(void)viewDidAppear:(BOOL)animated
{
    //self.myView.bounds = CGRectMake(0, 100, CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame));
    self.view.bounds = CGRectMake(0, 100, self.view.bounds.size.width, self.view.bounds.size.height);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
