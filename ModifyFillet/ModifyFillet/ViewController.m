//
//  ViewController.m
//  ModifyFillet
//
//  Created by MyMac on 15/9/23.
//  Copyright © 2015年 MyMac. All rights reserved.
//

#import "ViewController.h"
#import <Masonry.h>

@interface ViewController ()

//@property (nonatomic,strong) UIView *rectView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIView *rectView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    rectView.center= self.view.center;
    rectView.backgroundColor = [UIColor redColor];
    
    UIRectCorner rectCorner = UIRectCornerTopLeft | UIRectCornerTopRight;
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:rectView.bounds byRoundingCorners:rectCorner cornerRadii:CGSizeMake(20, 20)];
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.path = path.CGPath;
    rectView.layer.mask = layer;
    [self.view addSubview:rectView];
}




@end
