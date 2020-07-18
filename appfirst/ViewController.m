//
//  ViewController.m
//  appfirst
//
//  Created by 程磊 on 2020/7/16.
//  Copyright © 2020 程磊. All rights reserved.
//

#import "ViewController.h"
#import "secondvc.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    UILabel* uiLabel = [[UILabel alloc] init];
    uiLabel.text = @"hello iOS";
    uiLabel.textColor = [UIColor blackColor];
    [uiLabel sizeToFit];
    uiLabel.center = self.view.center;
//    [self.view addSubview:uiLabel];

    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.backgroundColor = [UIColor blackColor];
    [button setTitle:@"点击我" forState:UIControlStateNormal];
    [button setTitleColor:UIColor.whiteColor forState:UIControlStateNormal];
    
    button.layer.cornerRadius = 5;
    button.frame = CGRectMake(0, 0, 270, 44);
    [button setImage:nil forState:UIControlStateNormal];
    button.center = self.view.center;
    [button addTarget:self action:@selector(clickBtn:) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:button];
    
    
    // stack view
    
    UIStackView * stackContainer = UIStackView.new;
    stackContainer.frame = CGRectMake(100, 100, 170, 44);
    stackContainer.backgroundColor= [UIColor greenColor];
    [self.view addSubview:stackContainer];
    
    stackContainer.axis = UILayoutConstraintAxisHorizontal;

    stackContainer.distribution = UIStackViewDistributionFillEqually;
    stackContainer.alignment = UIStackViewAlignmentCenter;
    [stackContainer addArrangedSubview:uiLabel];
    [stackContainer addArrangedSubview:button];
    
}

-(void) clickBtn:(UIButton *) button {
    @autoreleasepool {
        NSLog(@"click");
        
        SecondVC * second = SecondVC.new;
        NSLog(@"navigaiioncontroller is nil: %d", self.navigationController == nil);
        [self.navigationController pushViewController:second animated:false];
    }

}
@end
