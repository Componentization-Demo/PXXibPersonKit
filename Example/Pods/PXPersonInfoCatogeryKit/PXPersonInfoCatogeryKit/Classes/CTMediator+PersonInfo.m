//
//  CTMediator+PersonInfo.m
//  Pods-PXPersonInfoCatogeryKit_Example
//
//  Created by os on 2019/8/22.
//

#import "CTMediator+PersonInfo.h"

@implementation CTMediator (PersonInfo)


- (UIViewController *)personInfoWithName:(NSString *)name age:(NSInteger)age{
    
    NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
    [dic setValue:name forKey:@"name"];
    [dic setValue:@(age) forKey:@"age"];
    
    return [self performTarget:@"PXPersonInfoViewController" action:@"PersonInfoViewController" params:dic shouldCacheTarget:NO];
}

@end
