//
//  PXViewController.m
//  PXXibPersonKit
//
//  Created by panxiangxing on 08/22/2019.
//  Copyright (c) 2019 panxiangxing. All rights reserved.
//

#import "PXViewController.h"

#import "CTMediator+PersonInfo.h"
#import "CTMediator+XibPerson.h"

@interface PXViewController ()

@property (nonatomic, strong) UIButton *perInfoBtn;
@property (nonatomic, strong) UIButton *xibBtn;

@end

@implementation PXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    [self.view addSubview:self.perInfoBtn];
    [self.view addSubview:self.xibBtn];
    
}

- (void)btnClicked{
    UIViewController *con = [[CTMediator sharedInstance] personInfoWithName:@"张三" age:18];
    [self.navigationController pushViewController:con animated:YES];
}

//xib文件组件化显示
- (void)xibBtnClicked{
    UIViewController *con = [[CTMediator sharedInstance] xibPersonWithImgName:@"person"];
    [self.navigationController pushViewController:con animated:YES];
}

-(UIButton *)xibBtn{
    if (!_xibBtn) {
        _xibBtn = [[UIButton alloc] initWithFrame:CGRectMake(100, 400, 200, 40)];
        [_xibBtn setTitle:@"xib文件组件化显示" forState:UIControlStateNormal];
        [_xibBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_xibBtn setBackgroundColor:[UIColor greenColor]];
        [_xibBtn addTarget:self action:@selector(xibBtnClicked) forControlEvents:UIControlEventTouchUpInside];
    }
    return _xibBtn;
}

-(UIButton *)perInfoBtn{
    if (!_perInfoBtn) {
        _perInfoBtn = [[UIButton alloc] initWithFrame:CGRectMake(100, 300, 100, 40)];
        [_perInfoBtn setTitle:@"个人详情" forState:UIControlStateNormal];
        [_perInfoBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_perInfoBtn setBackgroundColor:[UIColor greenColor]];
        [_perInfoBtn addTarget:self action:@selector(btnClicked) forControlEvents:UIControlEventTouchUpInside];
    }
    return _perInfoBtn;
}

@end
