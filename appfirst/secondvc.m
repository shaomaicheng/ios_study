//
//  secondvc.m
//  appfirst
//
//  Created by 程磊 on 2020/7/18.
//  Copyright © 2020 程磊. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "secondvc.h"

@implementation SecondVC

- (void)viewDidLoad{
    UILabel* label = UILabel.new;
    label.text = @"第二个页面";
    
    [label sizeToFit];
    label.center = self.view.center;

    label.textColor = [UIColor blackColor];
    [self.view addSubview:label];

}
@end
