//
//  Target_PXPersonInfoViewController.m
//  Pods-PXPersonInfoKit_Example
//
//  Created by os on 2019/8/22.
//

#import "Target_PXPersonInfoViewController.h"

#import "PXPersonInfoViewController.h"

@implementation Target_PXPersonInfoViewController

- (UIViewController *)Action_PersonInfoViewController:(NSDictionary *)param{
    PXPersonInfoViewController *perInfo = [[PXPersonInfoViewController alloc] init];
    perInfo.name = [param valueForKey:@"name"];
    perInfo.age = ((NSNumber *)[param valueForKey:@"age"]).integerValue;
    return perInfo;
}

@end
