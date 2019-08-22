//
//  Target_xibPersonViewController.m
//  Pods-PXXibPersonKit_Example
//
//  Created by os on 2019/8/22.
//

#import "Target_xibPersonViewController.h"

#import "PXXibPersonViewController.h"

@implementation Target_xibPersonViewController

- (UIViewController *)Action_xibPersonViewController:(NSDictionary *)param{
    
    PXXibPersonViewController *con = [[PXXibPersonViewController alloc] init];
    con.imgName = param[@"imgName"];
    
    return con;
}

@end
